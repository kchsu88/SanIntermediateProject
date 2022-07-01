.class final Lccsancom/mbridge/msdk/foundation/controller/a$a$c;
.super Ljava/lang/Object;
.source "MBSDKContext.java"

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/a$a;

.field private b:Lccsanandroid/os/IBinder;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->a:Lccsancom/mbridge/msdk/foundation/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->b:Lccsanandroid/os/IBinder;

    .line 347
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 355
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 356
    nop

    .line 358
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->b:Lccsanandroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 360
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 361
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 367
    goto :goto_0

    .line 362
    :catchall_0
    move-exception v2

    .line 363
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 367
    const/4 v2, 0x0

    .line 368
    :goto_0
    return-object v2

    .line 365
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 367
    throw v2
.end method

.method public final a(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 373
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 374
    nop

    .line 376
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->b:Lccsanandroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v0, v1, v2}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 379
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 380
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 381
    :catchall_0
    move-exception p1

    .line 382
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 387
    nop

    .line 388
    return v2

    .line 385
    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 386
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 387
    throw p1
.end method

.method public final asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 350
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$c;->b:Lccsanandroid/os/IBinder;

    return-object v0
.end method
