.class public Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceEncoder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;, "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<",
            "TT;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;

    return-object v0
.end method


# virtual methods
.method public encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 1
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 28
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;, "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    .local p1, "data":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .line 13
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;, "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;->encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullResourceEncoder;, "Lccsancom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    const-string v0, ""

    return-object v0
.end method
