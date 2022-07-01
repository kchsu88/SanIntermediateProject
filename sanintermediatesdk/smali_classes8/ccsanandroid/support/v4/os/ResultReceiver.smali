.class public Lccsanandroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;,
        Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroid/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Lccsanandroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lccsanandroid/support/v4/os/ResultReceiver$1;

    invoke-direct {v0}, Lccsanandroid/support/v4/os/ResultReceiver$1;-><init>()V

    sput-object v0, Lccsanandroid/support/v4/os/ResultReceiver;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 85
    iput-object p1, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mHandler:Lccsanandroid/os/Handler;

    .line 86
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mHandler:Lccsanandroid/os/Handler;

    .line 141
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/support/v4/os/IResultReceiver$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/support/v4/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveResult(ILccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Lccsanandroid/os/Bundle;
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

    .line 121
    return-void
.end method

.method public send(ILccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Lccsanandroid/os/Bundle;
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

    .line 96
    iget-boolean v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    new-instance v1, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Lccsanandroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Lccsanandroid/support/v4/os/ResultReceiver;ILccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2}, Lccsanandroid/support/v4/os/ResultReceiver;->onReceiveResult(ILccsanandroid/os/Bundle;)V

    .line 102
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;

    if-eqz v0, :cond_2

    .line 107
    :try_start_0
    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/os/IResultReceiver;->send(ILccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 111
    :cond_2
    :goto_1
    return-void
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Lccsanandroid/support/v4/os/ResultReceiver;)V

    iput-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;

    .line 134
    :cond_0
    iget-object v0, p0, Lccsanandroid/support/v4/os/ResultReceiver;->mReceiver:Lccsanandroid/support/v4/os/IResultReceiver;

    invoke-interface {v0}, Lccsanandroid/support/v4/os/IResultReceiver;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
