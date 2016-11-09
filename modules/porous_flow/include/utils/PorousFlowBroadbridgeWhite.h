/****************************************************************/
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*          All contents are licensed under LGPL V2.1           */
/*             See LICENSE for full restrictions                */
/****************************************************************/

#ifndef POROUSFLOWBROADBRIDGEWHITE_H
#define POROUSFLOWBROADBRIDGEWHITE_H

#include "MooseTypes.h"
#include "MooseError.h"

/**
 * Broadbridge-White version of relative permeability,
 * and effective saturation as a function of capillary pressure.
 * Valid for Kn small.
 * P Broadbridge, I White ``Constant rate rainfall
 * infiltration: A versatile nonlinear model, 1 Analytical solution''.
 * Water Resources Research 24 (1988) 145--154.
 */
namespace PorousFlowBroadbridgeWhite
{
/**
 * Provides the Lambert W function, which satisfies
 * W(z) * exp(W(z)) = z
 * @param z z value, which must be positive
 * @return W
 */
Real LambertW(Real z);

/**
 * effective saturation as a function of capillary pressure
 * If pc>=0 this will yield 1, otherwise it will yield <1
 * @param pc capillary pressure
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param las BW's lambda_s parameter
 */
Real seff(Real pc, Real c, Real sn, Real ss, Real las);

/**
 * derivative of effective saturation wrt capillary pressure
 * @param pc capillary pressure
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param las BW's lambda_s parameter
 */
Real dseff(Real pc, Real c, Real sn, Real ss, Real las);

/**
 * 2nd derivative of effective saturation wrt capillary pressure
 * @param pc capillary pressure
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param las BW's lambda_s parameter
 */
Real d2seff(Real pc, Real c, Real sn, Real ss, Real las);

/**
 * Relative permeability as a function of saturation
 * @param s saturation
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param kn BW's K_n parameter
 * @param ks BW's K_s parameter
 */
Real relperm(Real s, Real c, Real sn, Real ss, Real kn, Real ks);

/**
 * Derivative of Relative permeability with respect to saturation
 * @param s saturation
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param kn BW's K_n parameter
 * @param ks BW's K_s parameter
 */
Real drelperm(Real s, Real c, Real sn, Real ss, Real kn, Real ks);

/**
 * 2nd derivative of Relative permeability with respect to saturation
 * @param s saturation
 * @param c BW's C parameter
 * @param sn BW's S_n parameter
 * @param ss BW's S_s parameter
 * @param kn BW's K_n parameter
 * @param ks BW's K_s parameter
 */
Real d2relperm(Real s, Real c, Real sn, Real ss, Real kn, Real ks);
};

#endif // POROUSFLOWBROADBRIDGEWHITE_H
