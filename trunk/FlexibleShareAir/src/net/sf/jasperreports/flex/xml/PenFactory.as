/*
 * ============================================================================
 * GNU Lesser General Public License
 * ============================================================================
 *
 * JasperReports - Free Java report-generating library.
 * Copyright (C) 2001-2006 JasperSoft Corporation http://www.jaspersoft.com
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307, USA.
 * 
 * JasperSoft Corporation
 * 303 Second Street, Suite 450 North
 * San Francisco, CA 94107
 * http://www.jaspersoft.com
 */

/*
 * Contributors:
 * Victor Kolesnikov - gladman4@gmail.com
 */

package net.sf.jasperreports.flex.xml
{
	import net.sf.jasperreports.flex.model.Pen;
	import net.sf.jasperreports.flex.model.Style;
	
	public class PenFactory
	{
		public static function setPen(xml:XML, pen:Pen):void 
		{
			if (xml)
			{
				if (xml.@lineWidth.length() > 0)
				{
					pen.lineWidth = parseFloat(xml.@lineWidth);
				}

				if (xml.@lineStyle.length() > 0)
				{
					pen.lineStyle = xml.@lineStyle;
				}

				if (xml.@lineColor.length() > 0)
				{
					pen.lineColor = Style.color(xml.@lineColor);
				}
			}
		}
	}

}
