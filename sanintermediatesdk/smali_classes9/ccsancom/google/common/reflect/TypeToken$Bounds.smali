.class Lccsancom/google/common/reflect/TypeToken$Bounds;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final bounds:[Ljava/lang/reflect/Type;

.field private final target:Z


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Z)V
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .param p2, "target"    # Z

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    .line 1066
    iput-boolean p2, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->target:Z

    .line 1067
    return-void
.end method


# virtual methods
.method isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 6
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .line 1070
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1071
    .local v3, "bound":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4, p1}, Lccsancom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    iget-boolean v5, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v4, v5, :cond_0

    .line 1072
    return v5

    .line 1070
    .end local v3    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    :cond_1
    iget-boolean v0, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 7
    .param p1, "subtype"    # Ljava/lang/reflect/Type;

    .line 1079
    invoke-static {p1}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1080
    .local v0, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->bounds:[Ljava/lang/reflect/Type;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1081
    .local v4, "bound":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v4}, Lccsancom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    iget-boolean v6, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->target:Z

    if-ne v5, v6, :cond_0

    .line 1082
    return v6

    .line 1080
    .end local v4    # "bound":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1085
    :cond_1
    iget-boolean v1, p0, Lccsancom/google/common/reflect/TypeToken$Bounds;->target:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
