.class final Lccsancom/google/common/primitives/Longs$LongConverter;
.super Lccsancom/google/common/base/Converter;
.source "Longs.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/primitives/Longs$LongConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 432
    new-instance v0, Lccsancom/google/common/primitives/Longs$LongConverter;

    invoke-direct {v0}, Lccsancom/google/common/primitives/Longs$LongConverter;-><init>()V

    sput-object v0, Lccsancom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lccsancom/google/common/primitives/Longs$LongConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Lccsancom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 450
    sget-object v0, Lccsancom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lccsancom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/Longs$LongConverter;->doBackward(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 436
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/Longs$LongConverter;->doForward(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 446
    const-string v0, "Longs.stringConverter()"

    return-object v0
.end method
