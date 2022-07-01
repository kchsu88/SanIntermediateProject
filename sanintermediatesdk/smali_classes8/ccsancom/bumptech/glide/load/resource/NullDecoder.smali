.class public Lccsancom/bumptech/glide/load/resource/NullDecoder;
.super Ljava/lang/Object;
.source "NullDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final NULL_DECODER:Lccsancom/bumptech/glide/load/resource/NullDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/NullDecoder<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lccsancom/bumptech/glide/load/resource/NullDecoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/NullDecoder;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lccsancom/bumptech/glide/load/resource/NullDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullDecoder;, "Lccsancom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/load/resource/NullDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/bumptech/glide/load/resource/NullDecoder<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lccsancom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lccsancom/bumptech/glide/load/resource/NullDecoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullDecoder;, "Lccsancom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    .local p1, "source":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/NullDecoder;, "Lccsancom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
    const-string v0, ""

    return-object v0
.end method
