import React from 'react';

import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';
import Footer from '~/components/Footer';

import { AppWrapper } from './styles';

interface TemplateProps {
  children: React.ReactNode;
}

function Template(props: TemplateProps) {
  const { children } = props;

  return (
    <AppWrapper>
      <AppLogo fill="#000" />
      {children}
      <Footer />
    </AppWrapper>
  );
}

export default Template;
