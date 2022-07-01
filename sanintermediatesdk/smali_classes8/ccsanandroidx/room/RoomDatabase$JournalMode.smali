.class public final enum Lccsanandroidx/room/RoomDatabase$JournalMode;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JournalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/room/RoomDatabase$JournalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/room/RoomDatabase$JournalMode;

.field public static final enum AUTOMATIC:Lccsanandroidx/room/RoomDatabase$JournalMode;

.field public static final enum TRUNCATE:Lccsanandroidx/room/RoomDatabase$JournalMode;

.field public static final enum WRITE_AHEAD_LOGGING:Lccsanandroidx/room/RoomDatabase$JournalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 493
    new-instance v0, Lccsanandroidx/room/RoomDatabase$JournalMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Lccsanandroidx/room/RoomDatabase$JournalMode;

    .line 498
    new-instance v1, Lccsanandroidx/room/RoomDatabase$JournalMode;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Lccsanandroidx/room/RoomDatabase$JournalMode;

    .line 503
    new-instance v3, Lccsanandroidx/room/RoomDatabase$JournalMode;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Lccsanandroidx/room/RoomDatabase$JournalMode;

    .line 484
    const/4 v5, 0x3

    new-array v5, v5, [Lccsanandroidx/room/RoomDatabase$JournalMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsanandroidx/room/RoomDatabase$JournalMode;->$VALUES:[Lccsanandroidx/room/RoomDatabase$JournalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static isLowRamDevice(Lccsanandroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Lccsanandroid/app/ActivityManager;

    .line 526
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lccsanandroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 529
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/room/RoomDatabase$JournalMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 484
    const-class v0, Lccsanandroidx/room/RoomDatabase$JournalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/room/RoomDatabase$JournalMode;
    .locals 1

    .line 484
    sget-object v0, Lccsanandroidx/room/RoomDatabase$JournalMode;->$VALUES:[Lccsanandroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v0}, [Lccsanandroidx/room/RoomDatabase$JournalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method


# virtual methods
.method resolve(Lccsanandroid/content/Context;)Lccsanandroidx/room/RoomDatabase$JournalMode;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 512
    sget-object v0, Lccsanandroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Lccsanandroidx/room/RoomDatabase$JournalMode;

    if-eq p0, v0, :cond_0

    .line 513
    return-object p0

    .line 515
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 516
    nop

    .line 517
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/ActivityManager;

    .line 518
    .local v0, "manager":Lccsanandroid/app/ActivityManager;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lccsanandroidx/room/RoomDatabase$JournalMode;->isLowRamDevice(Lccsanandroid/app/ActivityManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    sget-object v1, Lccsanandroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Lccsanandroidx/room/RoomDatabase$JournalMode;

    return-object v1

    .line 522
    .end local v0    # "manager":Lccsanandroid/app/ActivityManager;
    :cond_1
    sget-object v0, Lccsanandroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Lccsanandroidx/room/RoomDatabase$JournalMode;

    return-object v0
.end method
