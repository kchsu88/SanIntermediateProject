.class public interface abstract Lccsanandroid/content/pm/IPackageStatsObserver;
.super Ljava/lang/Object;
.source "IPackageStatsObserver.java"

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/content/pm/IPackageStatsObserver$Stub;,
        Lccsanandroid/content/pm/IPackageStatsObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onGetStatsCompleted(Lccsanandroid/content/pm/PackageStats;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStats",
            "succeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method
