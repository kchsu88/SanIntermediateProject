.class Lccsancom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/ResourceRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceRecyclerCallback"
.end annotation


# static fields
.field public static final RECYCLE_RESOURCE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/load/engine/ResourceRecycler$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/ResourceRecycler$1;

    .line 30
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 35
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    .line 37
    .local v0, "resource":Lccsancom/bumptech/glide/load/engine/Resource;
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 38
    return v1

    .line 40
    .end local v0    # "resource":Lccsancom/bumptech/glide/load/engine/Resource;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
