<h1>
  <img src="https://axeptio.imgix.net/2024/07/e444a7b2-ea3d-4471-a91c-6be23e0c3cbb.png" alt="Descrizione immagine" width="80" style="vertical-align: middle; margin-right: 10px;" />
  Axeptio Client SGTM Public Template
</h1>

This repository provides a **template** for integrating **Axeptio** as a **Consent Management Platform (CMP)** with **Google Tag Manager (GTM) Server-Side**. The goal of this template is to streamline the process of importing and configuring **Axeptio** within a GTM Server-Side setup, simplifying consent management for websites.
<br><br>
## 📑 Table of Contents

1. [About Axeptio](#about-axeptio)
2. [Key Features of Axeptio:](#key-features-of-axeptio)
3. [Installation in GTM Server-Side](#installation-in-gtm-server-side)
   - [Step 1: Import the Template into GTM Server-Side](#step-1-import-the-template-into-gtm-server-side)
   - [Step 2: Configure the Tag](#step-2-configure-the-tag)
   - [Step 3: Test Your Configuration](#step-3-test-your-configuration)
4. [Additional Resources](#additional-resources)

<br><br>

## 🍪About Axeptio
[Axeptio](https://www.axept.io/) is a robust **Consent Management Platform (CMP)** designed to help businesses achieve full compliance with **GDPR** and **ePrivacy** regulations. It enables websites to transparently collect, manage, and store user consent while respecting user privacy. The platform features an intuitive, customizable interface that enhances the user experience.

<br><br>

## Key Features of Axeptio:
- **Full Compliance** with **GDPR** and the **ePrivacy Directive**.

- **User-friendly and customizable** interface.

- **Seamless integration** with cookie management tools.

- **Dynamic script management** based on user consent preferences.

<br><br>

## 🚀Installation in GTM Server-Side

### Step 1: Import the Template into GTM Server-Side
1. Clone or download this repository.
2. Open your **GTM Server-Side** container in **Google Tag Manager**.
3. Go to the **Templates** section and click on **Import**.
4. Import the JSON file that corresponds to the **Axeptio Client SGTM template**.

### Step 2: Configure the Tag
Once the template is successfully imported, follow these steps to configure the tag:
1. In the **Tags** section of your GTM Server-Side container, create a new tag.
2. Choose the **Axeptio Client** template you just imported.
3. Set up the configuration parameters to integrate **Axeptio** with your website:
- **Site ID**: Enter your unique Axeptio site ID.
- **Cookie Configuration**: Define which cookies you want to manage via Axeptio.
- **Triggers**: Define the events that will activate the tag based on your requirements.

### Step 3: Test Your Configuration
1. Use the **Preview** mode in GTM Server-Side to test the functionality and integration of the Axeptio tag.
2. Ensure that user consent is being properly collected and transmitted via the server.

<br><br>

## Additional Resources
For more detailed instructions and configuration tips, refer to the official documentation:
- [Axepo - Consent Management](https://www.axept.io/)
- [GTM Server-Side - Google Documentation](https://developers.google.com/tag-platform/tag-manager/server-side)

<br><br>
**Axeptio** helps ensure a seamless user experience while maintaining full compliance with data protection laws. If you encounter any issues or have suggestions to improve the template, please feel free to open an issue or submit a pull request.
