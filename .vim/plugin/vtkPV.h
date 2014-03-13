/*=========================================================================

  Program:   ParaView
  Module:    $RCSfile$

  Copyright (c) Kitware, Inc.
  All rights reserved.
  See Copyright.txt or http://www.paraview.org/HTML/Copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME $CLASSNAME$
// .SECTION Description
//

#ifndef __$CLASSNAME$_h
#define __$CLASSNAME$_h

#include "vtkSMObject.h"

class VTK_EXPORT $CLASSNAME$ : public vtkSMObject
{
public:
  static $CLASSNAME$* New();
  vtkTypeMacro($CLASSNAME$, vtkSMObject);
  void PrintSelf(ostream& os, vtkIndent indent);

//BTX
protected:
  $CLASSNAME$();
  ~$CLASSNAME$();

private:
  $CLASSNAME$(const $CLASSNAME$&); // Not implemented
  void operator=(const $CLASSNAME$&); // Not implemented
//ETX
};

#endif
