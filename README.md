# React + TypeScript + Vite

This has a template with a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) (or [oxc](https://oxc.rs) when used in [rolldown-vite](https://vite.dev/guide/rolldown)) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

The CI/CD pipeline:-
1. The git Action workflow to create and move a docker image to DockerHub.
2. The git action workflow to build and push image to ACR, then App service pulls image. 
   Developer Push --> GitHub Repository --> GitHub Actions --> Build Docker Image --> Push Image → Azure Container Registry --> Azure App Service (Staging Slot) --> Testing --> Slot Swap (Production)
