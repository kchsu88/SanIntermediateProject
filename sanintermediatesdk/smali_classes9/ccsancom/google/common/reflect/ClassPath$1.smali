.class final Lccsancom/google/common/reflect/ClassPath$1;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lccsancom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Predicate<",
        "Lccsancom/google/common/reflect/ClassPath$ClassInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/common/reflect/ClassPath$ClassInfo;)Z
    .locals 2
    .param p1, "info"    # Lccsancom/google/common/reflect/ClassPath$ClassInfo;

    .line 85
    invoke-static {p1}, Lccsancom/google/common/reflect/ClassPath$ClassInfo;->access$000(Lccsancom/google/common/reflect/ClassPath$ClassInfo;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 82
    check-cast p1, Lccsancom/google/common/reflect/ClassPath$ClassInfo;

    invoke-virtual {p0, p1}, Lccsancom/google/common/reflect/ClassPath$1;->apply(Lccsancom/google/common/reflect/ClassPath$ClassInfo;)Z

    move-result p1

    return p1
.end method
