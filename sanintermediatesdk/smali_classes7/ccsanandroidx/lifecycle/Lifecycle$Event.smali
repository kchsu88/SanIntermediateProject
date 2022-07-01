.class public final enum Lccsanandroidx/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 132
    new-instance v0, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 136
    new-instance v1, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 140
    new-instance v3, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 144
    new-instance v5, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 148
    new-instance v7, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 152
    new-instance v9, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 156
    new-instance v11, Lccsanandroidx/lifecycle/Lifecycle$Event;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsanandroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_ANY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 127
    const/4 v13, 0x7

    new-array v13, v13, [Lccsanandroidx/lifecycle/Lifecycle$Event;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lccsanandroidx/lifecycle/Lifecycle$Event;->$VALUES:[Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/lifecycle/Lifecycle$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/lifecycle/Lifecycle$Event;
    .locals 1

    .line 127
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->$VALUES:[Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Lccsanandroidx/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method
