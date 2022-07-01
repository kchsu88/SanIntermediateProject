.class public final Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamilyFilesResourceEntry"
.end annotation


# instance fields
.field private final mEntries:[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;


# direct methods
.method public constructor <init>([Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V
    .locals 0
    .param p1, "entries"    # [Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 171
    return-void
.end method


# virtual methods
.method public getEntries()[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 1

    .line 174
    iget-object v0, p0, Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Lccsanandroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-object v0
.end method
