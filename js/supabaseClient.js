/**
 * BVMC Report — Supabase Client Module
 * Provides initialized Supabase client and authentication helpers.
 */

import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm';

// Read from Vite environment variables or window globals
const supabaseUrl = (typeof import.meta !== 'undefined' && import.meta.env?.VITE_SUPABASE_URL)
  || (typeof window !== 'undefined' && window.VITE_SUPABASE_URL)
  || (typeof localStorage !== 'undefined' && localStorage.getItem('VITE_SUPABASE_URL'))
  || 'https://your-supabase-project.supabase.co';

const supabaseAnonKey = (typeof import.meta !== 'undefined' && import.meta.env?.VITE_SUPABASE_ANON_KEY)
  || (typeof window !== 'undefined' && window.VITE_SUPABASE_ANON_KEY)
  || (typeof localStorage !== 'undefined' && localStorage.getItem('VITE_SUPABASE_ANON_KEY'))
  || 'your-supabase-anon-key';

export const isSupabaseConfigured = () => {
  return (
    supabaseUrl &&
    supabaseUrl !== 'https://your-supabase-project.supabase.co' &&
    supabaseAnonKey &&
    supabaseAnonKey !== 'your-supabase-anon-key'
  );
};

export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    persistSession: true,
    autoRefreshToken: true,
    storageKey: 'bvmc_owner_session'
  }
});
