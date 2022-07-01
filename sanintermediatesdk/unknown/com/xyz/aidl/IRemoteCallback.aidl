// IRemoteCallback.aidl
package com.xyz.aidl;

// Declare any non-default types here with import statements

interface IRemoteCallback {
    void onResult(in Bundle result);
}