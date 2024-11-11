function value = getuprop(handle, name)
%GETUPROP Get the value of a user-defined property.
%	VALUE = GETUPROP(H, NAME) gets the value of the
%	user-defined property with name specified by NAME in the
%	figure or axes object with handle H.  If the user-defined
%	property does not exist, an empty matrix will be returned
%	in VALUE.
%
%	See also: setuprop, clruprop.

%	Steven L. Eddins, October 1994
%	Copyright (c) 1995 by The MathWorks, Inc.
%	$Revision: 1.5 $  $Date: 1995/01/29 05:25:18 $

tryString = 'objType = get(handle, ''type'');';
catchString = 'failed = 1;';
failed = 0;

eval(tryString, catchString);
if (failed)
  error('H is not a valid handle.');
end

objType = objType(1);
if ((objType ~= 'f') & (objType ~= 'a'))
  error(sprintf('Cannot create a user-defined property for "%s" objects.', ...
	objType));
end

container = findobj(handle, 'Tag', name);
if (isempty(container))
  value = [];
else
  value = get(container, 'UserData');
end