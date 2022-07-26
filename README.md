# MLCDA A machine learning framework based on multi-source feature fusion for circRNA-disease association prediction
CircRNAs are involved in the regulatory mechanisms of multiple complex diseases, and the identification of their associations is critical to the diagnosis and treatment of diseases. In recent years, many computational methods have been designed to predict circRNA-disease associations. However, most of the existing methods rely on single correlation data. Here, we propose a machine learning framework for circRNA-disease association prediction, called MLCDA, which effectively fuses multiple sources of heterogeneous information including circRNA sequences and disease ontology. Comprehensive evaluation in the gold standard dataset showed that MLCDA can successfully capture the complex relationships between circRNAs and diseases and accurately predict their potential associations. In addition, the results of case studies on real data show that MLCDA significantly outperforms other existing methods. MLCDA can serve as a useful tool for circRNA-disease association prediction, providing mechanistic insights for disease research and thus facilitating the progress of disease treatment.
# SIMCCDA_demo.m
SIMCCDA_demo.m is used for inductive matrix completion, and its main program is contained in SIMC folder.
# extract_feature_2DPC_circ.m
extract_feature_2DPC_circ.m is used for extract Two-dimensional Principal Component Analysis features of circRNA.
# extract_feature_2DPC_dise.m
extract_feature_2DPC_dise.m is used for extract Two-dimensional Principal Component Analysis features of disease.
# Plot_AUC.m
Plot_AUC.m is used for calculate evaluation parameters and plot ROC curve.
# Plot_PR.m
Plot_PR.m is used for calculate evaluation parameters and plot RP curve.
