[coeff, score, latent, ~, ~, mu]  = pca(seiseki);
figure;
h=scatter(score(:,1), score(:,2));
subjects = ["国語", "社会", "算数", "理科", "音楽", "美術", "体育", "技術家庭科", "英語"];
% subjects = ["Japanese", "social studies", "math", "science", "music", "art", "physical training", "industrial arts and homemaking", "english"];
for i = 1:7
    row = dataTipTextRow(subjects(i),seiseki(:, i));
    h.DataTipTemplate.DataTipRows(end+1) = row;
end
xlabel('PC1');
ylabel('PC2');