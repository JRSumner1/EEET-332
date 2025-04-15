init();
N=16;
M=3;
m=-N/2:N/2-1;
cm = 2*abs(m) % step a
make_stem(m,cm,'spectrum','m','cm');
win = zeros(size(cm)) % step b
m_between_negM_and_posM = find(m >= -M & m <= M); % step c
win(m_between_negM_and_posM) = hann(2*M+1, 'symmetric'); % step d
make_stem(m,win,'window','m','win');
cm_win = cm .* win % step e
make_stem(m,cm_win,'windowed spectrum','m','cm_win');