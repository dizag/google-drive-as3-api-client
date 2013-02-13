/*
Licensed under the MIT License

Copyright (c) 2012 Panurge Web Studio

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


*/

package com.panurge.google.drive.model
{
	/**
	 * Lists the changes for a user.
	 * https://developers.google.com/drive/v2/reference/changes/list
	 * 
	 * @author
	 * 
	 * @see https://developers.google.com/drive/v2/reference/changes/list
	 */
	dynamic public class GoogleDriveChangesList extends GoogleDriveFileList
	{
		
		/**
		 * The current largest change ID.
		 */
		public var largestChangeId:Number = -1; //	unsigned long	
		
		
		/**
		 * The actual list of changes.
		 * 
		 * @return 
		 * 
		 */
		public override function get items():Array
		{
			return _items;
		}

		public override function set items(value:Array):void
		{
			if (value != null){
				_items = [];
				for (var i:int = 0; i < value.length; i++) 
				{
					if (value[i] is GoogleDriveChange){
						_items.push(value[i]);
					}
					else{
						var gChange:GoogleDriveChange = new GoogleDriveChange();
						gChange.cast(value[i]);
						_items.push(gChange);
					}
				}
			}
			
		}
						
		public function GoogleDriveChangesList()
		{
			
		}
		
	}
}