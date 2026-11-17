/**
 * DateRangePicker — Pure Vanilla JS Date Range Calendar
 * No React, no external libraries.
 */
(function (global) {
  'use strict';

  const MONTH_NAMES = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  const WEEKDAYS = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  function pad(n) {
    return n < 10 ? '0' + n : String(n);
  }

  function formatDDMMYYYY(d) {
    if (!d || isNaN(d.getTime())) return '';
    return `${pad(d.getDate())}-${pad(d.getMonth() + 1)}-${d.getFullYear()}`;
  }

  function parseDate(str) {
    if (!str) return null;
    const s = String(str).trim();
    // DD-MM-YYYY or DD/MM/YYYY
    const m1 = s.match(/^(\d{1,2})[-/](\d{1,2})[-/](\d{4})/);
    if (m1) {
      return new Date(parseInt(m1[3], 10), parseInt(m1[2], 10) - 1, parseInt(m1[1], 10));
    }
    // YYYY-MM-DD
    const m2 = s.match(/^(\d{4})[-/](\d{1,2})[-/](\d{1,2})/);
    if (m2) {
      return new Date(parseInt(m2[1], 10), parseInt(m2[2], 10) - 1, parseInt(m2[3], 10));
    }
    return null;
  }

  function parseRangeString(rangeStr) {
    if (!rangeStr) return { start: null, end: null };
    const parts = String(rangeStr).split(/\s+to\s+/i);
    return {
      start: parseDate(parts[0]),
      end: parseDate(parts[1])
    };
  }

  function toMid(d) {
    return d ? new Date(d.getFullYear(), d.getMonth(), d.getDate()).getTime() : 0;
  }

  class DateRangePicker {
    constructor(target, options = {}) {
      this.input = typeof target === 'string' ? document.querySelector(target) : target;
      if (!this.input) {
        console.warn(`[DateRangePicker] Element not found:`, target);
        return;
      }

      this.options = Object.assign({
        format: 'DD-MM-YYYY',
        separator: ' to ',
        title: 'Select Date Range',
        onChange: null
      }, options);

      this.startDate = null;
      this.endDate = null;
      this.hoverDate = null;
      this.viewDate = new Date();
      this.isOpen = false;

      this._init();
    }

    _init() {
      // Add classes and wrapper
      this.input.classList.add('drp-input');

      let parent = this.input.parentElement;
      if (!parent.classList.contains('drp-container')) {
        const wrapper = document.createElement('div');
        wrapper.className = 'drp-container';
        parent.insertBefore(wrapper, this.input);
        wrapper.appendChild(this.input);
        parent = wrapper;
      }
      this.container = parent;

      // Add calendar icon
      let icon = this.container.querySelector('.drp-icon');
      if (!icon) {
        icon = document.createElement('span');
        icon.className = 'drp-icon';
        icon.textContent = '📅';
        this.container.appendChild(icon);
      }
      this.icon = icon;

      // Create popup element
      this.popup = document.createElement('div');
      this.popup.className = 'drp-popup';
      this.popup.style.display = 'none';
      this.container.appendChild(this.popup);

      // Event bindings
      this.input.addEventListener('click', (e) => {
        e.stopPropagation();
        this.toggle();
      });

      this.icon.addEventListener('click', (e) => {
        e.stopPropagation();
        this.toggle();
      });

      this.input.addEventListener('input', () => {
        this._onManualInput();
      });

      this.input.addEventListener('change', () => {
        this._onManualInput();
      });

      document.addEventListener('click', (e) => {
        if (!this.container.contains(e.target)) {
          this.close();
        }
      });

      // Parse initial value if present
      if (this.input.value.trim()) {
        this.setRange(this.input.value.trim(), false);
      }
    }

    toggle() {
      if (this.isOpen) {
        this.close();
      } else {
        this.open();
      }
    }

    open() {
      if (this.startDate) {
        this.viewDate = new Date(this.startDate.getFullYear(), this.startDate.getMonth(), 1);
      } else {
        this.viewDate = new Date();
      }
      this.render();
      this.popup.style.display = 'block';
      this.isOpen = true;
    }

    close() {
      this.popup.style.display = 'none';
      this.isOpen = false;
      this.hoverDate = null;
    }

    setRange(rangeStr, fireCallback = true) {
      const parsed = parseRangeString(rangeStr);
      this.startDate = parsed.start;
      this.endDate = parsed.end;

      if (this.startDate && this.endDate) {
        this.input.value = `${formatDDMMYYYY(this.startDate)}${this.options.separator}${formatDDMMYYYY(this.endDate)}`;
      } else if (this.startDate) {
        this.input.value = formatDDMMYYYY(this.startDate);
      } else {
        this.input.value = rangeStr || '';
      }

      if (this.startDate) {
        this.viewDate = new Date(this.startDate.getFullYear(), this.startDate.getMonth(), 1);
      }

      if (this.isOpen) {
        this.render();
      }

      if (fireCallback && typeof this.options.onChange === 'function') {
        this.options.onChange(this.input.value, this.startDate, this.endDate);
      }
    }

    _onManualInput() {
      const val = this.input.value.trim();
      const parsed = parseRangeString(val);
      this.startDate = parsed.start;
      this.endDate = parsed.end;
      if (this.startDate) {
        this.viewDate = new Date(this.startDate.getFullYear(), this.startDate.getMonth(), 1);
      }
      if (typeof this.options.onChange === 'function') {
        this.options.onChange(val, this.startDate, this.endDate);
      }
      if (this.isOpen) {
        this.render();
      }
    }

    _changeMonth(delta) {
      this.viewDate.setMonth(this.viewDate.getMonth() + delta);
      this.render();
    }

    _onDayClick(year, month, day) {
      const clicked = new Date(year, month, day);

      // Behavior:
      // 1st click: set startDate, reset endDate
      // 2nd click: set endDate, finalize range, close popup
      // 3rd click: start new selection cleanly
      if (!this.startDate || (this.startDate && this.endDate)) {
        this.startDate = clicked;
        this.endDate = null;
        this.hoverDate = null;
        this.input.value = formatDDMMYYYY(this.startDate);
        this.render();
      } else if (this.startDate && !this.endDate) {
        if (clicked < this.startDate) {
          this.endDate = this.startDate;
          this.startDate = clicked;
        } else {
          this.endDate = clicked;
        }

        const rangeStr = `${formatDDMMYYYY(this.startDate)}${this.options.separator}${formatDDMMYYYY(this.endDate)}`;
        this.input.value = rangeStr;
        this.close();

        // Dispatch events
        this.input.dispatchEvent(new Event('change', { bubbles: true }));
        this.input.dispatchEvent(new Event('input', { bubbles: true }));

        if (typeof this.options.onChange === 'function') {
          this.options.onChange(rangeStr, this.startDate, this.endDate);
        }
      }
    }

    render() {
      const year = this.viewDate.getFullYear();
      const month = this.viewDate.getMonth();

      let footerText = 'Click start date, then click end date';
      if (this.startDate && !this.endDate) {
        footerText = `Start: ${formatDDMMYYYY(this.startDate)} — Now click end date`;
      } else if (this.startDate && this.endDate) {
        footerText = `${formatDDMMYYYY(this.startDate)} to ${formatDDMMYYYY(this.endDate)}`;
      }

      this.popup.innerHTML = `
        <div class="drp-header">
          <span class="drp-title">${this.options.title}</span>
          <span class="drp-close" title="Close">&times;</span>
        </div>
        <div class="drp-nav">
          <button type="button" class="drp-nav-btn drp-prev">&lt;</button>
          <span class="drp-month-label">${MONTH_NAMES[month]} ${year}</span>
          <button type="button" class="drp-nav-btn drp-next">&gt;</button>
        </div>
        <div class="drp-weekdays">
          ${WEEKDAYS.map(w => `<span>${w}</span>`).join('')}
        </div>
        <div class="drp-grid"></div>
        <div class="drp-footer">${footerText}</div>
      `;

      // Header close button
      this.popup.querySelector('.drp-close').addEventListener('click', (e) => {
        e.stopPropagation();
        this.close();
      });

      // Nav month buttons
      this.popup.querySelector('.drp-prev').addEventListener('click', (e) => {
        e.stopPropagation();
        this._changeMonth(-1);
      });

      this.popup.querySelector('.drp-next').addEventListener('click', (e) => {
        e.stopPropagation();
        this._changeMonth(1);
      });

      // Build day cells
      const grid = this.popup.querySelector('.drp-grid');

      const firstDay = new Date(year, month, 1);
      let startDayIndex = firstDay.getDay() - 1; // 0 for Mon, -1 for Sun
      if (startDayIndex === -1) startDayIndex = 6;

      const daysInPrevMonth = new Date(year, month, 0).getDate();
      const daysInMonth = new Date(year, month + 1, 0).getDate();

      const startMid = toMid(this.startDate);
      const endMid = toMid(this.endDate);
      const hoverMid = toMid(this.hoverDate);

      // Previous month padding days
      for (let i = startDayIndex - 1; i >= 0; i--) {
        const d = daysInPrevMonth - i;
        const cell = document.createElement('div');
        cell.className = 'drp-day faded';
        cell.textContent = d;
        grid.appendChild(cell);
      }

      // Current month days
      for (let day = 1; day <= daysInMonth; day++) {
        const thisDate = new Date(year, month, day);
        const thisMid = toMid(thisDate);
        const cell = document.createElement('div');
        cell.className = 'drp-day';
        cell.textContent = day;

        const isStart = startMid && (thisMid === startMid);
        const isEnd = endMid && (thisMid === endMid);
        const isInRange = startMid && endMid && (thisMid > startMid && thisMid < endMid);
        const isHoverRange = !endMid && startMid && hoverMid && (
          (thisMid > startMid && thisMid <= hoverMid) || (thisMid < startMid && thisMid >= hoverMid)
        );

        if (isStart) cell.classList.add('start-date');
        if (isEnd) cell.classList.add('end-date');
        if (isInRange) cell.classList.add('in-range');
        if (isHoverRange) cell.classList.add('hover-range');

        cell.addEventListener('mouseenter', () => {
          if (this.startDate && !this.endDate) {
            this.hoverDate = thisDate;
            this._updateHoverStyles(grid, startMid, thisMid);
          }
        });

        cell.addEventListener('click', (e) => {
          e.stopPropagation();
          this._onDayClick(year, month, day);
        });

        grid.appendChild(cell);
      }
    }

    _updateHoverStyles(grid, startMid, hoverMid) {
      const days = grid.querySelectorAll('.drp-day:not(.faded)');
      days.forEach(cell => {
        const d = parseInt(cell.textContent, 10);
        const cellDate = new Date(this.viewDate.getFullYear(), this.viewDate.getMonth(), d);
        const cellMid = toMid(cellDate);

        if (cellMid === startMid) return;

        if (hoverMid > startMid && cellMid > startMid && cellMid <= hoverMid) {
          cell.classList.add('hover-range');
        } else if (hoverMid < startMid && cellMid < startMid && cellMid >= hoverMid) {
          cell.classList.add('hover-range');
        } else {
          cell.classList.remove('hover-range');
        }
      });
    }
  }

  // Export to global scope
  global.DateRangePicker = DateRangePicker;

})(typeof window !== 'undefined' ? window : this);
