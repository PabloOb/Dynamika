theta = 315;
force = 500;

%% Szablon struktury
% Bezwladnosci = struct(
%     'm',{},... % masa cz�onu (m)
%     'Iz',{}); % moment bezw�adno�ci cz�onu wzgl�dem osi z (I_z)

% Sprezyny = struct(
%     'k',{},... % sztywnosc sprezyny
%     'c',{},... % tlumienie w sprezynie
%     'bodyi',{},... % numer pierwszego ciala przylozenia sprezyny
%     'bodyj',{},... % numer drugiego ciala przylozenia sprezyny
%     'sA',{},... % punkt przylozenia sprezyny do ciala i w i-tym ukladzie lokalnym
%     'sB',{},... % punkt przylozenia sprezyny do ciala j w j-tym ukladzie lokalnym
%     'd0',{}) % dlugosc swobodna sprezyny

% Sily = struct('F',{},... % wektor przylozonej sily
%     'bodyi',{},... % numer ciala, do ktorego przylozono sile
%     'sA',{}) % punkt przylozenia sily do ciala i w i-tym ukladzie lokalnym

%% Masy i momenty bezw�adno�ci cz�on�w mechanizmu

NoB = 10; % Liczba cz�on�w mechanizmu (Number of Bodies)

Bezwladnosci(1) = cell2struct({22, 0.7}', fieldnames(Bezwladnosci)); % cz�on 1
Bezwladnosci(2) = cell2struct({21, 1.6}', fieldnames(Bezwladnosci)); % cz�on 2
Bezwladnosci(3) = cell2struct({2, 0.1}', fieldnames(Bezwladnosci)); % cz�on 3
Bezwladnosci(4) = cell2struct({2, 0.1}', fieldnames(Bezwladnosci)); % cz�on 4
Bezwladnosci(5) = cell2struct({3, 0.2}', fieldnames(Bezwladnosci)); % cz�on 5
Bezwladnosci(6) = cell2struct({3, 0.2}', fieldnames(Bezwladnosci)); % cz�on 6
Bezwladnosci(7) = cell2struct({25, 5}', fieldnames(Bezwladnosci)); % cz�on 7
Bezwladnosci(8) = cell2struct({7, 0.4}', fieldnames(Bezwladnosci)); % cz�on 8
Bezwladnosci(9) = cell2struct({5, 0.3}', fieldnames(Bezwladnosci)); % cz�on 9
Bezwladnosci(10) = cell2struct({11, 0.3}', fieldnames(Bezwladnosci)); % cz�on 10


%% Parametry fizyczne spr�yn

NoS = 2; % Number of Springs

Sprezyny(1) = cell2struct({1e4, 5e2, 3, 4, [0.05; 0.15], [-0.05; -0.15], sqrt(0.2^2 + 0.6^2)}', fieldnames(Sprezyny)); % sprezyna 1
Sprezyny(2) = cell2struct({1.4e4, 6e2, 5, 6, [0.05; 0.2], [-0.05; -0.2], sqrt(0.2^2 + 0.8^2)}', fieldnames(Sprezyny)); % sprezyna 2


%% Si�y skupione przy�o�one do mechanizmu

NoF = 1; % Number of Forces

Sily(1) = cell2struct({[force*cosd(theta); force*sind(theta)], 10, [0.1; -0.05]}', fieldnames(Sily)); % jedyna sila
