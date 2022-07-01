.class final enum Lccsancom/google/common/cache/CacheBuilder$NullListener;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Lccsancom/google/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/cache/CacheBuilder$NullListener;",
        ">;",
        "Lccsancom/google/common/cache/RemovalListener<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/cache/CacheBuilder$NullListener;

.field public static final enum INSTANCE:Lccsancom/google/common/cache/CacheBuilder$NullListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 202
    new-instance v0, Lccsancom/google/common/cache/CacheBuilder$NullListener;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/cache/CacheBuilder$NullListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$NullListener;

    .line 201
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/google/common/cache/CacheBuilder$NullListener;

    aput-object v0, v1, v2

    sput-object v1, Lccsancom/google/common/cache/CacheBuilder$NullListener;->$VALUES:[Lccsancom/google/common/cache/CacheBuilder$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/cache/CacheBuilder$NullListener;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 201
    const-class v0, Lccsancom/google/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/CacheBuilder$NullListener;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/cache/CacheBuilder$NullListener;
    .locals 1

    .line 201
    sget-object v0, Lccsancom/google/common/cache/CacheBuilder$NullListener;->$VALUES:[Lccsancom/google/common/cache/CacheBuilder$NullListener;

    invoke-virtual {v0}, [Lccsancom/google/common/cache/CacheBuilder$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/cache/CacheBuilder$NullListener;

    return-object v0
.end method


# virtual methods
.method public onRemoval(Lccsancom/google/common/cache/RemovalNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/RemovalNotification<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "notification":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method
