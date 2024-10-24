<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Delayed Resolution Domain                    -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      September 2022                                    -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!-- Refer to this file by the following public identifier:        -->
<!--                                                               -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.x Delayed Resolution Domain//EN" -->
<!--       Delivered as file "delayResolutionDomain.mod"           -->
<!--                                                               -->
<!-- The public ID above refers to the latest version.             -->
<!--                                                               -->
<!-- To refer to this specific version, you can use this value:    -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Delayed Resolution Domain//EN" -->
<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements for the delayed conref domain     -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             February 2008                                     -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2008, 2022.              -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--     07 Sep 2022 KJE Updated for DITA 2.0                      -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % exportanchors
                       "exportanchors"                               >
<!ENTITY % anchorid    "anchorid"                                    >
<!ENTITY % anchorkey   "anchorkey"                                   >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Export Anchor List              -->
<!ENTITY % exportanchors.content
                       "(%anchorid; |
                         %anchorkey;)*"
>
<!ENTITY % exportanchors.attributes
              "%univ-atts;"
>
<!ELEMENT  exportanchors %exportanchors.content;>
<!ATTLIST  exportanchors %exportanchors.attributes;>


<!--                    LONG NAME: Anchor ID                       -->
<!ENTITY % anchorid.content
                       "EMPTY"
>
<!ENTITY % anchorid.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               id
                          NMTOKEN
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  anchorid %anchorid.content;>
<!ATTLIST  anchorid %anchorid.attributes;>


<!--                    LONG NAME: Anchor Key                      -->
<!ENTITY % anchorkey.content
                       "EMPTY"
>
<!ENTITY % anchorkey.attributes
              "keyref
                          CDATA
                                    #REQUIRED
               %univ-atts;"
>
<!ELEMENT  anchorkey %anchorkey.content;>
<!ATTLIST  anchorkey %anchorkey.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  exportanchors   class CDATA "+ topic/keywords delay-d/exportanchors ">
<!ATTLIST  anchorid        class CDATA "+ topic/keyword delay-d/anchorid ">
<!ATTLIST  anchorkey       class CDATA "+ topic/keyword delay-d/anchorkey ">

<!-- ================== End of DITA Delay Resolution Domain ==================== -->
 