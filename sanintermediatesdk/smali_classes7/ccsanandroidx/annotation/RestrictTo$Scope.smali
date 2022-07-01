.class public final enum Lccsanandroidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Lccsanandroidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Lccsanandroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Lccsanandroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP_PREFIX:Lccsanandroidx/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Lccsanandroidx/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Lccsanandroidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 63
    new-instance v0, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/annotation/RestrictTo$Scope;->LIBRARY:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 69
    new-instance v1, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v3, "LIBRARY_GROUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 83
    new-instance v3, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v5, "LIBRARY_GROUP_PREFIX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 91
    new-instance v5, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v7, "GROUP_ID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/annotation/RestrictTo$Scope;->GROUP_ID:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 97
    new-instance v7, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v9, "TESTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsanandroidx/annotation/RestrictTo$Scope;->TESTS:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 105
    new-instance v9, Lccsanandroidx/annotation/RestrictTo$Scope;

    const-string v11, "SUBCLASSES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsanandroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsanandroidx/annotation/RestrictTo$Scope;->SUBCLASSES:Lccsanandroidx/annotation/RestrictTo$Scope;

    .line 58
    const/4 v11, 0x6

    new-array v11, v11, [Lccsanandroidx/annotation/RestrictTo$Scope;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lccsanandroidx/annotation/RestrictTo$Scope;->$VALUES:[Lccsanandroidx/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/annotation/RestrictTo$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lccsanandroidx/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/annotation/RestrictTo$Scope;
    .locals 1

    .line 58
    sget-object v0, Lccsanandroidx/annotation/RestrictTo$Scope;->$VALUES:[Lccsanandroidx/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Lccsanandroidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method
