.class public interface abstract Lccsanandroid/support/v4/os/IResultReceiver;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/os/IResultReceiver$Stub;,
        Lccsanandroid/support/v4/os/IResultReceiver$Default;
    }
.end annotation


# virtual methods
.method public abstract send(ILccsanandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "resultData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method
