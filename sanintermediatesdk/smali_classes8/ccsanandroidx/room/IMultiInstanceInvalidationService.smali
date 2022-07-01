.class public interface abstract Lccsanandroidx/room/IMultiInstanceInvalidationService;
.super Ljava/lang/Object;
.source "IMultiInstanceInvalidationService.java"

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract broadcastInvalidation(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method
