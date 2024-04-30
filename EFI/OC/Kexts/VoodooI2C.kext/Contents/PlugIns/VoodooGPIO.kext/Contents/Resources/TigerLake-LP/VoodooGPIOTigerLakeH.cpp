//
//  VoodooGPIOTigerLakeH.cpp
//  VoodooGPIO
//
//  Created by DOMO ARIGATO on 3/25/23.
//  Copyright © 2023 CoolStar. All rights reserved.
//

#include "VoodooGPIOTigerLakeH.hpp"

OSDefineMetaClassAndStructors(VoodooGPIOTigerLakeH, VoodooGPIOIntel);

bool VoodooGPIOTigerLakeH::start(IOService *provider) {
    
    
   /* { "INT34C5", (kernel_ulong_t)&tgllp_soc_data },
    { "INT34C6", (kernel_ulong_t)&tglh_soc_data },
    { "INTC1055", (kernel_ulong_t)&tgllp_soc_data },*/
    
    if (0)
    {
        this->pins = tgllp_pins;
        this->npins = ARRAY_SIZE(tgllp_pins);
        this->communities = tgllp_communities;
        this->ncommunities = ARRAY_SIZE(tgllp_communities);
        
    }
    else
    {
        this->pins = tglh_pins;
        this->npins = ARRAY_SIZE(tglh_pins);
        this->communities = tglh_communities;
        this->ncommunities = ARRAY_SIZE(tglh_communities);
        
    }
      /*
    this->pins = tgllp_pins;
    this->npins = ARRAY_SIZE(tgllp_pins);
    this->groups = tgllp_groups;
    this->ngroups = ARRAY_SIZE(tgllp_groups);
    this->functions = tgllp_functions;
    this->nfunctions = ARRAY_SIZE(tgllp_functions);
    this->communities = tgllp_communities;
    this->ncommunities = ARRAY_SIZE(tgllp_communities);*/

    IOLog("%s::Loading GPIO Data for TigerLake-H\n", getName());

    return VoodooGPIOIntel::start(provider);
}
