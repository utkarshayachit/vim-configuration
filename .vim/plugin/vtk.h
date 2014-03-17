/*=========================================================================

  Program:   Visualization Toolkit
  Module:    $CLASSNAME$.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME $CLASSNAME$ 
// .SECTION Description

#ifndef __$CLASSNAME$_h
#define __$CLASSNAME$_h

#include "vtkObject.h"

class VTK_COMMON_EXPORT $CLASSNAME$ : public vtkObject
{
public:
  static $CLASSNAME$* New();
  vtkTypeMacro($CLASSNAME$, vtkObject);
  void PrintSelf(ostream& os, vtkIndent indent);

//BTX
protected:
  $CLASSNAME$();
  ~$CLASSNAME$();

private:
  $CLASSNAME$(const $CLASSNAME$&); // Not implemented.
  void operator=(const $CLASSNAME$&); // Not implemented.
//ETX
};

#endif
