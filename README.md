# GetFeedback Dashboard

### Setup

-version for global dependencies :

```
node  v12.22.3
npm  8.3.0
yarn  1.22.10
DevTools: Redux DevTools  2.17.0
```

- build the UI
-

-install dependencies after clone the repo

```
yarn
```

-run it locally

```
yarn start
```

-run it locally using production build

```
yarn start:prod
```

then open a link that appear in terminal such as `https://0.0.0.0:8080/`

-run unit test

```
yarn test
```

-update Snapshot for unit test

```
yarn test:update
```

### Setup with Docker

-build the image

```
make build
```

-run containers in background

```
make up
```

-follow the logs

```
make logs
```

---

### A top-level directory layout

    .
    ├── ...
    ├── src
    │   ├── components           # folder with root component and root configration for the app, aslo have common component
    │   ├── ex: dashboard        # other components that we going to use in our app
    │   ├── services             # files where we handle REST API
    │   └── index                # entry point for webpack (where we start the application bundling process)
    │
    ├── webpack
    │   ├── webpack.common       # common webpack configuration for staging and production environment
    │   ├── webpack.prod         # webpack configuration for production environment
    │   └── webpack.staging      # webpack configuration for staging environment
    │
    ├── package                  # Test files (alternatively `spec` or `tests`)
    ├── webpack.dev              # webpack configuration for development environment
    ├── otherConfiguration       # configuration files (like linting, Dockerfile, testing and ts configuration)
    └── ...

---

### tool used for development

- React
- Redux
- react-router
- Jest
- React testing-library
- styled-components (JS-in-CSS)
- Webpack

---

### Redux overview

Store state:

```js
{
       dashboard: {
          rates: [],
          filterRates: [],
          isFetching: null,
       }

}

```

Actions:

```
FETCH_RATES  >>> to fetch rates data by calling RatingDashboardService
FILTER_RATES >>> to filter rates data when we update fitler state
```

---

### components and async data flow diagram:

![image](https://user-images.githubusercontent.com/47742500/162671027-24e9e98f-6292-45bb-a1b1-ebaf95f7fd55.png)

---

### UI overview

Desktop:

![image](https://user-images.githubusercontent.com/47742500/162681010-2447d606-11aa-465d-912e-49bfd249c7bd.png)

![image](https://user-images.githubusercontent.com/47742500/162681527-3217fec5-7378-4af3-96b1-093ff6cbb612.png)

![image](https://user-images.githubusercontent.com/47742500/162681577-19054109-d8fa-4a17-923a-86cd073df12d.png)

Tablet:

![image](https://user-images.githubusercontent.com/47742500/162681741-651d7955-ac58-4af0-940c-82c446a20641.png)

Phone:

![image](https://user-images.githubusercontent.com/47742500/162681833-1fcf544f-0ecc-48f1-83f6-2950de35f3e2.png)

friendly message when we have no data our the API throw error:

![image](https://user-images.githubusercontent.com/47742500/162681222-041e93b9-447d-41c6-b690-eb0d4e97e4b1.png)

---

## Notes:

-I know its better to add pagination to the table, but I did not added it as it's not require. Please let me know if we must have it then I'll add it in few hours.

-I used device-detector-js to get deviceType and platform version from userAgent

-for font-family, I did not manage to get `Halyard Text` from Adobe as figma so I used another font-family.

-as no design requirement for Tablet and Phone, so I just make it responsive by swipe the table, to keep it sample and readable.

-create reusable component (ex: TextBox, ReadMe, MultipleSelect...) and make every component in separate file so we can use it again.

---

Name: Mohamad Alkel

Start: 11th Monday at 7:00 AM MYT (1:00 AM CET)

Feel free to ask me if you have any question

Looking forward to your feadback 😊
