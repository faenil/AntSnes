/* AntSnes
 *
 * Copyright (C) 2010 Summeli <summeli@summeli.fi>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#ifndef DPADWIDGET_H
#define DPADWIDGET_H

#include <QtGui/QWidget>
#include "ui_dpadwidget.h"

class DPadWidget : public QObject
{
    Q_OBJECT

public:
    DPadWidget(QObject *parent = 0);
    ~DPadWidget();
    quint32 getSnesKey(int x, int y);
    void setDpadMode( int mode );

private:
    quint32 getFourDirectinalPad(  int x, int y );
signals:
    void showMenu();
	
private:
    int dpadMode;
   // Ui::DPadWidgetClass ui;
};

#endif // DPADWIDGET_H
