import { Route, Switch } from "react-router-dom";
import Home from "../pages/Home";
import Cart from "../pages/Cart";
import SignIn from "../pages/SignIn";
import SignUp from "../pages/SignUp";

export default function Routes() {
  return (
    <Switch>
      <Route path="/" exact component={SignIn} />
      <Route path="/signup" exact component={SignUp} />
      <Route path="/home" exact component={Home} />
      <Route path="/cart" component={Cart} />
    </Switch>
  );
}