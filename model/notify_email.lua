local mex = "Gentile utente,\n\n"..
"Ti ricordiamo che dalla scorsa settimana l'accesso a Parelon è consentito solo usando la password temporanea generata dal token consegnatoTi alla registrazione. Se non lo hai già fatto, per usarlo, il token deve essere attivato visitando il sito *https://autenticazione.parelon.com* .\n"..
"Puoi seguire il video tutorial all'indirizzo *https://www.youtube.com/watch?v=46TjxymPbro* .\n"..
"Questo è quello che Ti chiediamo di fare passo passo:\n"..
" - accedi usando il tuo login e la tua password; non modificare il resto;\n"..
" - nella finestra che si aprirà, digita il numero seriale che trovi sul retro del tuo token e clicca *assign Token*;\n"..
" - clicca su */OK/* e */OK/* nelle due finestre che si apriranno dopo;\n"..
" - clicca sulla voce */Resync Token/* in alto al centro;\n"..
" - sulla sinistra troverai il seriale del tuo token sotto il tuo login: clicca sul seriale e vedrai apparire il suo valore nella casella */selected Token/*;\n"..
" - inserisci due password temporanee consecutive generate dal tuo token nelle voci */OTP 1/* e */OTP 2/*;\n"..
" - clicca su */resync OTP/* e poi */OK/*.\n\n"..
"Da questo momento in poi potrai usare liberamente Parelon indicando la password temporanea alla voce */OTP/*. Per qualsiasi problema scrivici all'indirizzo e-mail */assistenza.token@parelon.com/* .\n\n"..
"Grazie e Buona Democrazia.\n\n"..
"Cordiali Saluti\n\n"..
"Il Gruppo Parelon"

local soggetto = "Attivazione Token"
local content = slot.use_temporary(function() slot.put(mex) end)
net.send_mail{
  envelope_from = config.mail_envelope_from,
  from          = config.mail_from,
  to            = "gogolander@gmail.com",
  subject       = subject,
  content_type  = "text/plain; charset=UTF-8",
  content       = content
}
