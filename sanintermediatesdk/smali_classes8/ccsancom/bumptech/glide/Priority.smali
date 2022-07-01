.class public final enum Lccsancom/bumptech/glide/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/bumptech/glide/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/bumptech/glide/Priority;

.field public static final enum HIGH:Lccsancom/bumptech/glide/Priority;

.field public static final enum IMMEDIATE:Lccsancom/bumptech/glide/Priority;

.field public static final enum LOW:Lccsancom/bumptech/glide/Priority;

.field public static final enum NORMAL:Lccsancom/bumptech/glide/Priority;

.field public static final enum priority:Lccsancom/bumptech/glide/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lccsancom/bumptech/glide/Priority;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/bumptech/glide/Priority;->IMMEDIATE:Lccsancom/bumptech/glide/Priority;

    .line 10
    new-instance v1, Lccsancom/bumptech/glide/Priority;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/bumptech/glide/Priority;->HIGH:Lccsancom/bumptech/glide/Priority;

    .line 11
    new-instance v3, Lccsancom/bumptech/glide/Priority;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/bumptech/glide/Priority;->NORMAL:Lccsancom/bumptech/glide/Priority;

    .line 12
    new-instance v5, Lccsancom/bumptech/glide/Priority;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/bumptech/glide/Priority;->LOW:Lccsancom/bumptech/glide/Priority;

    new-instance v7, Lccsancom/bumptech/glide/Priority;

    const-string v9, "priority"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsancom/bumptech/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsancom/bumptech/glide/Priority;->priority:Lccsancom/bumptech/glide/Priority;

    .line 8
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/bumptech/glide/Priority;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/bumptech/glide/Priority;->$VALUES:[Lccsancom/bumptech/glide/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/bumptech/glide/Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lccsancom/bumptech/glide/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/Priority;

    return-object v0
.end method

.method public static values()[Lccsancom/bumptech/glide/Priority;
    .locals 1

    .line 8
    sget-object v0, Lccsancom/bumptech/glide/Priority;->$VALUES:[Lccsancom/bumptech/glide/Priority;

    invoke-virtual {v0}, [Lccsancom/bumptech/glide/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/bumptech/glide/Priority;

    return-object v0
.end method
