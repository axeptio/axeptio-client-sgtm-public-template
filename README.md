
# Axeptio Client SGTM Public Template

Ce projet est un template pour intégrer Axeptio en tant que CMP (Consent Management Platform) avec GTM (Google Tag Manager) côté serveur. Ce client SGTM est conçu pour faciliter l'importation d'Axeptio dans GTM Server Side.

## À propos de Axeptio

[Axeptio](https://www.axept.io) est une plateforme de gestion des consentements (CMP) conforme aux réglementations RGPD et ePrivacy. Axeptio permet aux sites web de recueillir, gérer et stocker les consentements des utilisateurs de manière transparente et respectueuse de leur vie privée.

### Caractéristiques principales d'Axeptio :
- Conformité totale avec le RGPD et la directive ePrivacy.
- Interface utilisateur intuitive et personnalisable.
- Intégration rapide avec les outils de gestion des cookies.
- Gestion dynamique des scripts en fonction du consentement de l'utilisateur.

## Installation dans GTM Server Side

### Étape 1 : Importation du modèle dans GTM Server Side
1. Clonez ou téléchargez ce dépôt.
2. Ouvrez votre GTM Server Side Container dans Google Tag Manager.
3. Allez dans la section **Templates** et sélectionnez **Import**.
4. Importez le fichier JSON correspondant au modèle Axeptio Client SGTM.

### Étape 2 : Configuration du Tag
1. Après l'importation, allez dans la section **Tags** de votre GTM Server Side.
2. Créez un nouveau tag et sélectionnez le modèle Axeptio Client que vous venez d'importer.
3. Configurez les paramètres nécessaires pour intégrer Axeptio à votre site web :
   - **Site ID** : Renseignez votre ID de site Axeptio.
   - **Configuration des cookies** : Définissez les cookies à gérer via Axeptio.
4. Définissez les déclencheurs qui activeront ce tag en fonction des événements souhaités.

### Étape 3 : Testez votre configuration
1. Utilisez l'outil **Preview** de GTM Server Side pour tester la bonne intégration et le bon fonctionnement de votre tag Axeptio.
2. Vérifiez que les consentements sont correctement recueillis et transmis via le serveur.

## Plus d'informations

Pour plus de détails sur la configuration d'Axeptio, vous pouvez consulter la [documentation officielle](https://www.axept.io/docs).

### Liens utiles :
- [Axeptio - Gestion des Consentements](https://www.axept.io)
- [GTM Server Side - Documentation Google](https://developers.google.com/tag-manager/serverside)

---

Axeptio vous aide à offrir une meilleure expérience utilisateur tout en assurant la conformité avec les lois de protection des données. Si vous avez des questions ou des suggestions d'amélioration pour ce template, n'hésitez pas à ouvrir une issue ou à créer une pull request.
