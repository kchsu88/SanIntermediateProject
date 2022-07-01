.class public Lccsanandroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/NotificationCompat$Action$SemanticAction;,
        Lccsanandroidx/core/app/NotificationCompat$Action$WearableExtender;,
        Lccsanandroidx/core/app/NotificationCompat$Action$Extender;,
        Lccsanandroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_SEMANTIC_ACTION:Ljava/lang/String; = "android.support.action.semanticAction"

.field static final EXTRA_SHOWS_USER_INTERFACE:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Lccsanandroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

.field final mExtras:Lccsanandroid/os/Bundle;

.field private mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

.field private final mIsContextual:Z

.field private final mRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent"
        }
    .end annotation

    .line 4440
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithResource(Lccsanandroid/content/res/Resources;Ljava/lang/String;I)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .line 4441
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V
    .locals 13
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .param p4, "extras"    # Lccsanandroid/os/Bundle;
    .param p5, "remoteInputs"    # [Lccsanandroidx/core/app/RemoteInput;
    .param p6, "dataOnlyRemoteInputs"    # [Lccsanandroidx/core/app/RemoteInput;
    .param p7, "allowGeneratedReplies"    # Z
    .param p8, "semanticAction"    # I
    .param p9, "showsUserInterface"    # Z
    .param p10, "isContextual"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent",
            "extras",
            "remoteInputs",
            "dataOnlyRemoteInputs",
            "allowGeneratedReplies",
            "semanticAction",
            "showsUserInterface",
            "isContextual"
        }
    .end annotation

    .line 4458
    move v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    invoke-static {v1, v2, p1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithResource(Lccsanandroid/content/res/Resources;Ljava/lang/String;I)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    :goto_0
    move-object v3, v1

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 4461
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V
    .locals 11
    .param p1, "icon"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent"
        }
    .end annotation

    .line 4449
    new-instance v4, Lccsanandroid/os/Bundle;

    invoke-direct {v4}, Lccsanandroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lccsanandroidx/core/app/NotificationCompat$Action;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V

    .line 4451
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;Lccsanandroid/os/Bundle;[Lccsanandroidx/core/app/RemoteInput;[Lccsanandroidx/core/app/RemoteInput;ZIZZ)V
    .locals 2
    .param p1, "icon"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Lccsanandroid/app/PendingIntent;
    .param p4, "extras"    # Lccsanandroid/os/Bundle;
    .param p5, "remoteInputs"    # [Lccsanandroidx/core/app/RemoteInput;
    .param p6, "dataOnlyRemoteInputs"    # [Lccsanandroidx/core/app/RemoteInput;
    .param p7, "allowGeneratedReplies"    # Z
    .param p8, "semanticAction"    # I
    .param p9, "showsUserInterface"    # Z
    .param p10, "isContextual"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent",
            "extras",
            "remoteInputs",
            "dataOnlyRemoteInputs",
            "allowGeneratedReplies",
            "semanticAction",
            "showsUserInterface",
            "isContextual"
        }
    .end annotation

    .line 4469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4470
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 4471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4472
    invoke-virtual {p1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v0

    iput v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->icon:I

    .line 4474
    :cond_0
    invoke-static {p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 4475
    iput-object p3, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    .line 4476
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mExtras:Lccsanandroid/os/Bundle;

    .line 4477
    iput-object p5, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

    .line 4478
    iput-object p6, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

    .line 4479
    iput-boolean p7, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 4480
    iput p8, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 4481
    iput-boolean p9, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4482
    iput-boolean p10, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    .line 4483
    return-void
.end method


# virtual methods
.method public getActionIntent()Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 4510
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .line 4525
    iget-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Lccsanandroidx/core/app/RemoteInput;
    .locals 1

    .line 4568
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

    return-object v0
.end method

.method public getExtras()Lccsanandroid/os/Bundle;
    .locals 1

    .line 4517
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mExtras:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4491
    iget v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getIconCompat()Lccsanandroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 4499
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v0, :cond_0

    .line 4500
    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithResource(Lccsanandroid/content/res/Resources;Ljava/lang/String;I)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 4502
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getRemoteInputs()[Lccsanandroidx/core/app/RemoteInput;
    .locals 1

    .line 4534
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Lccsanandroidx/core/app/RemoteInput;

    return-object v0
.end method

.method public getSemanticAction()I
    .locals 1

    .line 4545
    iget v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    return v0
.end method

.method public getShowsUserInterface()Z
    .locals 1

    .line 4576
    iget-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 4506
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isContextual()Z
    .locals 1

    .line 4554
    iget-boolean v0, p0, Lccsanandroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    return v0
.end method
