%hook AppJailBrokenChecker
+ (unsigned char)isAppJailbroken {
    return %orig;
}
%end

%hook InitViewController
- (bool)isJailbreak {
    return 0;
}
%end

%hook DocumentPath
+ (bool)isJailbroken {
    return 0;
}
%end

%hook SFAntiPiracy
+ (bool)isTheDeviceJailbroken {
    return 0;
}
%end

%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
- (bool)isJailbroken {
    return 0;
}
%end
