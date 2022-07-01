.class Lccsancom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/bumptech/glide/GlideBuilder;->setDiskCache(Lccsancom/bumptech/glide/load/engine/cache/DiskCache;)Lccsancom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/GlideBuilder;

.field final synthetic val$diskCache:Lccsancom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/GlideBuilder;Lccsancom/bumptech/glide/load/engine/cache/DiskCache;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder$1;->this$0:Lccsancom/bumptech/glide/GlideBuilder;

    iput-object p2, p0, Lccsancom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
