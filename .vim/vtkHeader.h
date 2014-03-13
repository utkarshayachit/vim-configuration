/*=========================================================================

  Program:   Visualization Toolkit
  Module:    $RCSfile$

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtk$FILENAME$ 
// .SECTION Description
// 

#ifndef __vtk$FILENAME$_h
#define __vtk$FILENAME$_h

#include "vtkObject.h"

class VTK_EXPORT vtk$FILENAME$ : public vtkObject
{
public:
  static vtk$FILENAME$* New();
  vtkTypeRevisionMacro(vtk$FILENAME$, vtkObject);
  void PrintSelf(ostream& os, vtkIndent indent);

protected:
  vtk$FILENAME$();
  ~vtk$FILENAME$();

private:
  vtk$FILENAME$(const vtk$FILENAME$&); // Not implemented.
  void operator=(const vtk$FILENAME$&); // Not implemented.
};

#endif

