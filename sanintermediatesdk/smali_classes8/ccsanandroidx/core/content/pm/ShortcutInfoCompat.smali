.class public Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# static fields
.field private static final EXTRA_LOCUS_ID:Ljava/lang/String; = "extraLocusId"

.field private static final EXTRA_LONG_LIVED:Ljava/lang/String; = "extraLongLived"

.field private static final EXTRA_PERSON_:Ljava/lang/String; = "extraPerson_"

.field private static final EXTRA_PERSON_COUNT:Ljava/lang/String; = "extraPersonCount"

.field private static final EXTRA_SLICE_URI:Ljava/lang/String; = "extraSliceUri"


# instance fields
.field mActivity:Lccsanandroid/content/ComponentName;

.field mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Lccsanandroid/content/Context;

.field mDisabledMessage:Ljava/lang/CharSequence;

.field mDisabledReason:I

.field mExtras:Lccsanandroid/os/PersistableBundle;

.field mHasKeyFieldsOnly:Z

.field mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

.field mId:Ljava/lang/String;

.field mIntents:[Lccsanandroid/content/Intent;

.field mIsAlwaysBadged:Z

.field mIsCached:Z

.field mIsDeclaredInManifest:Z

.field mIsDynamic:Z

.field mIsEnabled:Z

.field mIsImmutable:Z

.field mIsLongLived:Z

.field mIsPinned:Z

.field mLabel:Ljava/lang/CharSequence;

.field mLastChangedTimestamp:J

.field mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

.field mLongLabel:Ljava/lang/CharSequence;

.field mPackageName:Ljava/lang/String;

.field mPersons:[Lccsanandroidx/core/app/Person;

.field mRank:I

.field mUser:Lccsanandroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 101
    return-void
.end method

.method private buildLegacyExtrasBundle()Lccsanandroid/os/PersistableBundle;
    .locals 4

    .line 157
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lccsanandroid/os/PersistableBundle;

    invoke-direct {v0}, Lccsanandroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    .line 160
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Lccsanandroidx/core/app/Person;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 161
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    array-length v0, v0

    const-string v2, "extraPersonCount"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Lccsanandroidx/core/app/Person;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraPerson_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Lccsanandroidx/core/app/Person;

    aget-object v3, v3, v0

    .line 164
    invoke-virtual {v3}, Lccsanandroidx/core/app/Person;->toPersistableBundle()Lccsanandroid/os/PersistableBundle;

    move-result-object v3

    .line 163
    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Lccsanandroid/os/PersistableBundle;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    invoke-virtual {v0}, Lccsanandroidx/core/content/LocusIdCompat;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extraLocusId"

    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    iget-boolean v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    const-string v2, "extraLongLived"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    return-object v0
.end method

.method static fromShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcuts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 370
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ShortcutInfo;

    .line 372
    .local v2, "s":Lccsanandroid/content/pm/ShortcutInfo;
    new-instance v3, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v3, p0, v2}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v3}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v2    # "s":Lccsanandroid/content/pm/ShortcutInfo;
    goto :goto_0

    .line 374
    :cond_0
    return-object v0
.end method

.method static getLocusId(Lccsanandroid/content/pm/ShortcutInfo;)Lccsanandroidx/core/content/LocusIdCompat;
    .locals 2
    .param p0, "shortcutInfo"    # Lccsanandroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shortcutInfo"
        }
    .end annotation

    .line 473
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 474
    invoke-virtual {p0}, Lccsanandroid/content/pm/ShortcutInfo;->getLocusId()Lccsanandroid/content/LocusId;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/pm/ShortcutInfo;->getLocusId()Lccsanandroid/content/LocusId;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/content/LocusIdCompat;->toLocusIdCompat(Lccsanandroid/content/LocusId;)Lccsanandroidx/core/content/LocusIdCompat;

    move-result-object v0

    return-object v0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/pm/ShortcutInfo;->getExtras()Lccsanandroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getLocusIdFromExtra(Lccsanandroid/os/PersistableBundle;)Lccsanandroidx/core/content/LocusIdCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getLocusIdFromExtra(Lccsanandroid/os/PersistableBundle;)Lccsanandroidx/core/content/LocusIdCompat;
    .locals 2
    .param p0, "bundle"    # Lccsanandroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 489
    :cond_0
    const-string v1, "extraLocusId"

    invoke-virtual {p0, v1}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "locusId":Ljava/lang/String;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lccsanandroidx/core/content/LocusIdCompat;

    invoke-direct {v0, v1}, Lccsanandroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static getLongLivedFromExtra(Lccsanandroid/os/PersistableBundle;)Z
    .locals 2
    .param p0, "bundle"    # Lccsanandroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 357
    if-eqz p0, :cond_1

    const-string v0, "extraLongLived"

    invoke-virtual {p0, v0}, Lccsanandroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 358
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static getPersonsFromExtra(Lccsanandroid/os/PersistableBundle;)[Lccsanandroidx/core/app/Person;
    .locals 5
    .param p0, "bundle"    # Lccsanandroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 337
    if-eqz p0, :cond_2

    const-string v0, "extraPersonCount"

    invoke-virtual {p0, v0}, Lccsanandroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "personsLength":I
    new-array v1, v0, [Lccsanandroidx/core/app/Person;

    .line 343
    .local v1, "persons":[Lccsanandroidx/core/app/Person;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraPerson_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {p0, v3}, Lccsanandroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Lccsanandroid/os/PersistableBundle;

    move-result-object v3

    .line 344
    invoke-static {v3}, Lccsanandroidx/core/app/Person;->fromPersistableBundle(Lccsanandroid/os/PersistableBundle;)Lccsanandroidx/core/app/Person;

    move-result-object v3

    aput-object v3, v1, v2

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 338
    .end local v0    # "personsLength":I
    .end local v1    # "persons":[Lccsanandroidx/core/app/Person;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method addToIntent(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;
    .locals 3
    .param p1, "outIntent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outIntent"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Lccsanandroid/content/Intent;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 176
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 177
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "badge":Lccsanandroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 181
    .local v1, "pm":Lccsanandroid/content/pm/PackageManager;
    iget-object v2, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Lccsanandroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageManager;->getActivityIcon(Lccsanandroid/content/ComponentName;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 188
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 189
    iget-object v2, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/content/pm/ApplicationInfo;->loadIcon(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .end local v1    # "pm":Lccsanandroid/content/pm/PackageManager;
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    iget-object v2, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p1, v0, v2}, Lccsanandroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Lccsanandroid/content/Intent;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/Context;)V

    .line 194
    .end local v0    # "badge":Lccsanandroid/graphics/drawable/Drawable;
    :cond_2
    return-object p1
.end method

.method public getActivity()Lccsanandroid/content/ComponentName;
    .locals 1

    .line 228
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Lccsanandroid/content/ComponentName;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 259
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisabledReason()I
    .locals 1

    .line 266
    iget v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    return v0
.end method

.method public getExtras()Lccsanandroid/os/PersistableBundle;
    .locals 1

    .line 379
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    return-object v0
.end method

.method public getIcon()Lccsanandroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 326
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 2

    .line 277
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Lccsanandroid/content/Intent;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Lccsanandroid/content/Intent;
    .locals 2

    .line 287
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Lccsanandroid/content/Intent;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroid/content/Intent;

    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    .line 394
    iget-wide v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    return-wide v0
.end method

.method public getLocusId()Lccsanandroidx/core/content/LocusIdCompat;
    .locals 1

    .line 309
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 248
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 318
    iget v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 238
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUserHandle()Lccsanandroid/os/UserHandle;
    .locals 1

    .line 387
    iget-object v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mUser:Lccsanandroid/os/UserHandle;

    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    return v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    return v0
.end method

.method public toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;
    .locals 4

    .line 108
    new-instance v0, Lccsanandroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/pm/ShortcutInfo$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Lccsanandroid/content/Intent;

    .line 110
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setIntents([Lccsanandroid/content/Intent;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 111
    .local v0, "builder":Lccsanandroid/content/pm/ShortcutInfo$Builder;
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, v2}, Lccsanandroidx/core/graphics/drawable/IconCompat;->toIcon(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 114
    :cond_0
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 117
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 120
    :cond_2
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Lccsanandroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setActivity(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 123
    :cond_3
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 126
    :cond_4
    iget v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setRank(I)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 127
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Lccsanandroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setExtras(Lccsanandroid/os/PersistableBundle;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 130
    :cond_5
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_9

    .line 131
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Lccsanandroidx/core/app/Person;

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 132
    array-length v1, v1

    new-array v1, v1, [Lccsanandroid/app/Person;

    .line 133
    .local v1, "persons":[Lccsanandroid/app/Person;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 134
    iget-object v3, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Lccsanandroidx/core/app/Person;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lccsanandroidx/core/app/Person;->toAndroidPerson()Lccsanandroid/app/Person;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setPersons([Lccsanandroid/app/Person;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 138
    .end local v1    # "persons":[Lccsanandroid/app/Person;
    :cond_7
    iget-object v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Lccsanandroidx/core/content/LocusIdCompat;

    if-eqz v1, :cond_8

    .line 139
    invoke-virtual {v1}, Lccsanandroidx/core/content/LocusIdCompat;->toLocusId()Lccsanandroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setLocusId(Lccsanandroid/content/LocusId;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 141
    :cond_8
    iget-boolean v1, p0, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setLongLived(Z)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    goto :goto_1

    .line 146
    :cond_9
    invoke-direct {p0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->buildLegacyExtrasBundle()Lccsanandroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->setExtras(Lccsanandroid/os/PersistableBundle;)Lccsanandroid/content/pm/ShortcutInfo$Builder;

    .line 148
    :goto_1
    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutInfo$Builder;->build()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method
