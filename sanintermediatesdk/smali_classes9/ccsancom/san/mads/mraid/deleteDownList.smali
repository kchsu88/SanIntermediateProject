.class public final enum Lccsancom/san/mads/mraid/deleteDownList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/mads/mraid/deleteDownList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/mads/mraid/deleteDownList;

.field public static final enum DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

.field public static final enum EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

.field public static final enum HIDDEN:Lccsancom/san/mads/mraid/deleteDownList;

.field public static final enum LOADING:Lccsancom/san/mads/mraid/deleteDownList;

.field public static final enum RESIZED:Lccsancom/san/mads/mraid/deleteDownList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/deleteDownList;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/san/mads/mraid/deleteDownList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/san/mads/mraid/deleteDownList;->LOADING:Lccsancom/san/mads/mraid/deleteDownList;

    .line 2
    new-instance v1, Lccsancom/san/mads/mraid/deleteDownList;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/san/mads/mraid/deleteDownList;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    .line 3
    new-instance v3, Lccsancom/san/mads/mraid/deleteDownList;

    const-string v5, "RESIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/san/mads/mraid/deleteDownList;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    .line 4
    new-instance v5, Lccsancom/san/mads/mraid/deleteDownList;

    const-string v7, "EXPANDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/san/mads/mraid/deleteDownList;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    .line 5
    new-instance v7, Lccsancom/san/mads/mraid/deleteDownList;

    const-string v9, "HIDDEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsancom/san/mads/mraid/deleteDownList;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsancom/san/mads/mraid/deleteDownList;->HIDDEN:Lccsancom/san/mads/mraid/deleteDownList;

    .line 6
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/san/mads/mraid/deleteDownList;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/san/mads/mraid/deleteDownList;->$VALUES:[Lccsancom/san/mads/mraid/deleteDownList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/mads/mraid/deleteDownList;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/mads/mraid/deleteDownList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/mads/mraid/deleteDownList;

    return-object p0
.end method

.method public static values()[Lccsancom/san/mads/mraid/deleteDownList;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->$VALUES:[Lccsancom/san/mads/mraid/deleteDownList;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/deleteDownList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/deleteDownList;

    return-object v0
.end method


# virtual methods
.method public toJavascriptString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
