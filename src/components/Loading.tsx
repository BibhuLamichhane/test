// src/components/Loading.tsx
import React from 'react';
import styles from '../styles/app.module.css';  // Importing the styles

const Loading: React.FC = () => {
  return <p className={styles.loading}>Loading...</p>;
};

export default Loading;
