# Axeptio Client SGTM Public Template

This project is a template for integrating Axeptio as a CMP (Consent Management Platform) with GTM (Google Tag Manager) Server-Side. This SGTM client is designed to simplify the import of Axeptio into GTM Server-Side.

## About Axeptio

[Axeptio](https://www.axept.io) is a Consent Management Platform (CMP) that complies with GDPR and ePrivacy regulations. Axeptio allows websites to collect, manage, and store user consent in a transparent and privacy-respecting way.

### Key Features of Axeptio:
- Full compliance with GDPR and the ePrivacy directive.
- Intuitive and customizable user interface.
- Quick integration with cookie management tools.
- Dynamic script management based on user consent.

## Installation in GTM Server-Side

### Step 1: Import the Template into GTM Server-Side
1. Clone or download this repository.
2. Open your GTM Server-Side container in Google Tag Manager.
3. Navigate to the **Templates** section and select **Import**.
4. Import the JSON file corresponding to the Axeptio Client SGTM template.

### Step 2: Tag Configuration
1. After the import, go to the **Tags** section in your GTM Server-Side.
2. Create a new tag and select the Axeptio Client template you just imported.
3. Configure the necessary parameters to integrate Axeptio with your website:
   - **Site ID**: Enter your Axeptio site ID.
   - **Cookie Configuration**: Define the cookies to be managed via Axeptio.
4. Set the triggers that will activate this tag based on the desired events.

### Step 3: Test Your Configuration
1. Use GTM Server-Side's **Preview** tool to test the correct integration and functionality of your Axeptio tag.
2. Verify that consent is properly collected and transmitted via the server.

## More Information

For more details on configuring Axeptio, you can refer to the [official documentation](https://www.axept.io/docs).

### Useful Links:
- [Axeptio - Consent Management](https://www.axept.io)
- [GTM Server-Side - Google Documentation](https://developers.google.com/tag-manager/serverside)

---

Axeptio helps you offer a better user experience while ensuring compliance with data protection laws. If you have any questions or suggestions for improving this template, feel free to open an issue or create a pull request.
