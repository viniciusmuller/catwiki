import React from 'react';

import { ReactComponent as AppLogo } from '~/assets/svg/CatwikiLogo.svg';
import Footer from '~/components/Footer';

import Wrapper from './styles';

interface TemplateProps {
  children: React.ReactNode;
}

function Template(props: TemplateProps) {
  const { children } = props;

  return (
    <Wrapper>
      <AppLogo fill="#000" />
      {children}
      <Footer />
    </Wrapper>
  );
}

export default Template;
