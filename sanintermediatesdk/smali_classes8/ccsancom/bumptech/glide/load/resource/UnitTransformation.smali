.class public Lccsancom/bumptech/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lccsancom/bumptech/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lccsancom/bumptech/glide/load/Transformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/UnitTransformation;, "Lccsancom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/load/resource/UnitTransformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/bumptech/glide/load/resource/UnitTransformation<",
            "TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lccsancom/bumptech/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lccsancom/bumptech/glide/load/Transformation;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/UnitTransformation;, "Lccsancom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 0
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lccsancom/bumptech/glide/load/resource/UnitTransformation;, "Lccsancom/bumptech/glide/load/resource/UnitTransformation<TT;>;"
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    return-object p1
.end method
