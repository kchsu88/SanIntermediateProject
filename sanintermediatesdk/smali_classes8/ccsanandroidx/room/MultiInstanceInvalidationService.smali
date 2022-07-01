.class public Lccsanandroidx/room/MultiInstanceInvalidationService;
.super Lccsanandroid/app/Service;
.source "MultiInstanceInvalidationService.java"


# instance fields
.field private final mBinder:Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;

.field final mCallbackList:Lccsanandroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/RemoteCallbackList<",
            "Lccsanandroidx/room/IMultiInstanceInvalidationCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mClientNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxClientId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mMaxClientId:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mClientNames:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lccsanandroidx/room/MultiInstanceInvalidationService$1;

    invoke-direct {v0, p0}, Lccsanandroidx/room/MultiInstanceInvalidationService$1;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mCallbackList:Lccsanandroid/os/RemoteCallbackList;

    .line 60
    new-instance v0, Lccsanandroidx/room/MultiInstanceInvalidationService$2;

    invoke-direct {v0, p0}, Lccsanandroidx/room/MultiInstanceInvalidationService$2;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mBinder:Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 132
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationService;->mBinder:Lccsanandroidx/room/IMultiInstanceInvalidationService$Stub;

    return-object v0
.end method
