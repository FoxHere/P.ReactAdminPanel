import { Box } from "@mui/material";
import Header from "../../Components/Header";

const Dashboard = () => {
    return(
       <Box m="20px">
        <Box display="flex" alignItems="center" justifyCcontent="space-between" >
          <Header title="DASHBOARD" subtitle="Welcome to your Dashboard"/>
        </Box>
       </Box>
    )
} 

export default Dashboard;