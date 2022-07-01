.class public final Lccsanandroidx/core/app/RemoteActionCompat;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"

# interfaces
.implements Lccsanandroidx/versionedparcelable/VersionedParcelable;


# instance fields
.field public mActionIntent:Lccsanandroid/app/PendingIntent;

.field public mContentDescription:Ljava/lang/CharSequence;

.field public mEnabled:Z

.field public mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

.field public mShouldShowIcon:Z

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/app/RemoteActionCompat;)V
    .locals 1
    .param p1, "other"    # Lccsanandroidx/core/app/RemoteActionCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 102
    iget-object v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    .line 105
    iget-boolean v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    iput-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 106
    iget-boolean v0, p1, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    iput-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "icon"    # Lccsanandroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "contentDescription",
            "intent"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 82
    invoke-static {p2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 83
    invoke-static {p3}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    .line 84
    invoke-static {p4}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/PendingIntent;

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 86
    iput-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 87
    return-void
.end method

.method public static createFromRemoteAction(Lccsanandroid/app/RemoteAction;)Lccsanandroidx/core/app/RemoteActionCompat;
    .locals 5
    .param p0, "remoteAction"    # Lccsanandroid/app/RemoteAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteAction"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lccsanandroidx/core/app/RemoteActionCompat;

    .line 117
    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->getIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createFromIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->getActionIntent()Lccsanandroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroidx/core/app/RemoteActionCompat;-><init>(Lccsanandroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .line 119
    .local v0, "action":Lccsanandroidx/core/app/RemoteActionCompat;
    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/RemoteActionCompat;->setEnabled(Z)V

    .line 120
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lccsanandroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/RemoteActionCompat;->setShouldShowIcon(Z)V

    .line 123
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActionIntent()Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 179
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 158
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 165
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 130
    iput-boolean p1, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mEnabled:Z

    .line 131
    return-void
.end method

.method public setShouldShowIcon(Z)V
    .locals 0
    .param p1, "shouldShowIcon"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldShowIcon"
        }
    .end annotation

    .line 144
    iput-boolean p1, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    .line 145
    return-void
.end method

.method public shouldShowIcon()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mShouldShowIcon:Z

    return v0
.end method

.method public toRemoteAction()Lccsanandroid/app/RemoteAction;
    .locals 5

    .line 190
    new-instance v0, Lccsanandroid/app/RemoteAction;

    iget-object v1, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon()Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Lccsanandroidx/core/app/RemoteActionCompat;->mActionIntent:Lccsanandroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroid/app/RemoteAction;-><init>(Lccsanandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lccsanandroid/app/PendingIntent;)V

    .line 192
    .local v0, "action":Lccsanandroid/app/RemoteAction;
    invoke-virtual {p0}, Lccsanandroidx/core/app/RemoteActionCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/RemoteAction;->setEnabled(Z)V

    .line 193
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 194
    invoke-virtual {p0}, Lccsanandroidx/core/app/RemoteActionCompat;->shouldShowIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 196
    :cond_0
    return-object v0
.end method
