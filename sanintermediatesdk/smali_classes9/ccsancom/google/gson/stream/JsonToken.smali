.class public final enum Lccsancom/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum NAME:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum NULL:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lccsancom/google/gson/stream/JsonToken;

.field public static final enum STRING:Lccsancom/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lccsancom/google/gson/stream/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lccsancom/google/gson/stream/JsonToken;

    .line 37
    new-instance v1, Lccsancom/google/gson/stream/JsonToken;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/gson/stream/JsonToken;->END_ARRAY:Lccsancom/google/gson/stream/JsonToken;

    .line 43
    new-instance v3, Lccsancom/google/gson/stream/JsonToken;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lccsancom/google/gson/stream/JsonToken;

    .line 49
    new-instance v5, Lccsancom/google/gson/stream/JsonToken;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/google/gson/stream/JsonToken;->END_OBJECT:Lccsancom/google/gson/stream/JsonToken;

    .line 56
    new-instance v7, Lccsancom/google/gson/stream/JsonToken;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsancom/google/gson/stream/JsonToken;->NAME:Lccsancom/google/gson/stream/JsonToken;

    .line 61
    new-instance v9, Lccsancom/google/gson/stream/JsonToken;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsancom/google/gson/stream/JsonToken;->STRING:Lccsancom/google/gson/stream/JsonToken;

    .line 67
    new-instance v11, Lccsancom/google/gson/stream/JsonToken;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsancom/google/gson/stream/JsonToken;->NUMBER:Lccsancom/google/gson/stream/JsonToken;

    .line 72
    new-instance v13, Lccsancom/google/gson/stream/JsonToken;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lccsancom/google/gson/stream/JsonToken;->BOOLEAN:Lccsancom/google/gson/stream/JsonToken;

    .line 77
    new-instance v15, Lccsancom/google/gson/stream/JsonToken;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lccsancom/google/gson/stream/JsonToken;->NULL:Lccsancom/google/gson/stream/JsonToken;

    .line 84
    new-instance v14, Lccsancom/google/gson/stream/JsonToken;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lccsancom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lccsancom/google/gson/stream/JsonToken;->END_DOCUMENT:Lccsancom/google/gson/stream/JsonToken;

    .line 25
    const/16 v12, 0xa

    new-array v12, v12, [Lccsancom/google/gson/stream/JsonToken;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lccsancom/google/gson/stream/JsonToken;->$VALUES:[Lccsancom/google/gson/stream/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/gson/stream/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lccsancom/google/gson/stream/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public static values()[Lccsancom/google/gson/stream/JsonToken;
    .locals 1

    .line 25
    sget-object v0, Lccsancom/google/gson/stream/JsonToken;->$VALUES:[Lccsancom/google/gson/stream/JsonToken;

    invoke-virtual {v0}, [Lccsancom/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/gson/stream/JsonToken;

    return-object v0
.end method
