.class public final enum Lccsanandroidx/loader/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/loader/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Lccsanandroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Lccsanandroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Lccsanandroidx/loader/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 103
    new-instance v0, Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/loader/content/ModernAsyncTask$Status;->PENDING:Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    .line 107
    new-instance v1, Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    .line 111
    new-instance v3, Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    .line 99
    const/4 v5, 0x3

    new-array v5, v5, [Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsanandroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/loader/content/ModernAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const-class v0, Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/loader/content/ModernAsyncTask$Status;
    .locals 1

    .line 99
    sget-object v0, Lccsanandroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Lccsanandroidx/loader/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method
