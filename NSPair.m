/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2017 Jean-David Gadina - www.xs-labs.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 ******************************************************************************/

/*!
 * @file        NSPair.m
 * @copyright   (c) 2017, Jean-David Gadina - www.xs-labs.com
 */

#import "NSPair.h"

@implementation NSPair

- ( instancetype )init
{
    return [ self initWithFirstValue: nil secondValue: nil ];
}

- ( instancetype )initWithFirstValue: ( nullable id )first secondValue: ( nullable id )second
{
    if( ( self = [ super init ] ) )
    {
        self.first  = first;
        self.second = second;
    }
    
    return self;
}

- ( instancetype )copyWithZone: ( NSZone * )zone
{
    return [ [ [ self class ] allocWithZone: zone ] initWithFirstValue: self.first secondValue: self.second ];
}

- ( nullable instancetype )initWithCoder: ( nonnull NSCoder * )coder
{
    if( ( self = [ self init ] ) )
    {
        self.first  = [ coder decodeObjectForKey: @"first" ];
        self.second = [ coder decodeObjectForKey: @"second" ];
    }
    
    return self;
}

- ( void )encodeWithCoder: ( nonnull NSCoder * )coder
{
    [ coder encodeObject: self.first  forKey: @"first" ];
    [ coder encodeObject: self.second forKey: @"second" ];
}

- ( NSString * )description
{
    return [ NSString stringWithFormat: @"%@ < %@, %@ >", [ super description ], NSStringFromClass( [ self.first class ] ), NSStringFromClass( [ self.second class ] ) ];
}

@end

