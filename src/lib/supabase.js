import { createClient } from "@supabase/supabase-js";

const supabaseUrl = "https://qsushfpqgagkyeoytpmy.supabase.co";
const supabaseKey = "sb_publishable_1QAVYs0HKYQLdC5GJJSK-g_Qv29fBPB";

export const supabase = createClient(supabaseUrl, supabaseKey);