import { FiUser, FiShoppingCart, FiLogOut } from "react-icons/fi";
import { Link } from "react-router-dom";

import logoImg from "../../assets/logo.svg";
import { Banner } from "../Banner";
import { useProfile } from "../../hooks/UseProfile";

import { Container, Content, NavigationArea, ProfileArea } from "./styles";

export function Header() {
    const { signOut } = useProfile();

    return (
        <Container>
            <Content>
                <ProfileArea>
                    <section>
                        <FiUser size={15}/>
                        <span>Profile</span>
                    </section>

                    <section>
                        <FiShoppingCart size={15}/>
                        <span>Items</span>
                    </section>
                </ProfileArea>

                <NavigationArea>
                    <img src={logoImg} alt="logo img" title="logo img"/>

                    <nav>
                        <ul>
                            <li><Link to="">home</Link></li>
                        </ul>
                        <input type="text" placeholder="Buscar produto"/>
                        <button>Buscar</button>
                        <FiLogOut size={22} onClick={signOut}/>
                    </nav>
                </NavigationArea>
            </Content>

            <Banner/>
        </Container>
    );
}