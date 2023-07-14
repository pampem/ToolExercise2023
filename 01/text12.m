load fisheriris;

[coeff, score, latent, ~, ~, mu]  = pca(meas);

figure;
gscatter(score(:,1), score(:,2), species, 'rgb');
xlabel('PC1');
ylabel('PC2');

Y = tsne(meas);
figure;
gscatter(Y(:,1), Y(:,2), species, 'rgb');