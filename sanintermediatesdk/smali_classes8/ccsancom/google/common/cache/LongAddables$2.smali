.class final Lccsancom/google/common/cache/LongAddables$2;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Supplier<",
        "Lccsancom/google/common/cache/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lccsancom/google/common/cache/LongAddable;
    .locals 2

    .line 46
    new-instance v0, Lccsancom/google/common/cache/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/cache/LongAddables$PureJavaLongAddable;-><init>(Lccsancom/google/common/cache/LongAddables$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAddables$2;->get()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method
