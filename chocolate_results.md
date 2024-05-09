## FontBakery report

fontbakery version: 0.12.5



## Experimental checks

These won't break the CI job for now, but will become effective after some time if nobody raises any concern.


<details><summary>[1] ChocolateClassicalSans-Regular.ttf</summary>
<div>
<details>
    <summary>⚠️ <b>WARN</b> Validate location, size and resolution of article images. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>


> 
> The purpose of this check is to ensure images (either raster or vector files)
> are placed on the correct directory (an `images` subdirectory inside `article`) and
> they they are not excessively large in filesize and resolution.
> 
> These constraints are loosely based on infrastructure limitations under
> default configurations.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/4594





* ⚠️ **WARN** <p>Family metadata at /Users/aaronbell/Documents/LocalProjects/GF_CJK_2024_Q2/ChocolateSans/fonts/ttf does not have an article.</p>
 [code: lacks-article]



</div>
</details>
</div>
</details>




## All other checks



<details><summary>[19] ChocolateClassicalSans-Regular.ttf</summary>
<div>
<details>
    <summary>💥 <b>ERROR</b> Check the direction of the outermost contour in each glyph <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>


> 
> In TrueType fonts, the outermost contour of a glyph should be oriented
> counter-clockwise, while the inner contours should be oriented clockwise.
> Getting the path direction wrong can lead to rendering issues in some
> software.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2056





* 💥 **ERROR** <p>Failed with ZeroDivisionError: float division by zero</p>
<pre><code>  File &quot;/usr/local/lib/python3.11/site-packages/fontbakery/checkrunner.py&quot;, line 213, in _run_check
    subresults = list(subresults)
                 ^^^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/fontbakery/checks/outline.py&quot;, line 366, in com_google_fonts_check_outline_direction
    if path.direction == 1:
       ^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/beziers/path/__init__.py&quot;, line 558, in direction
    return math.copysign(1, self.signed_area)
                            ^^^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/beziers/path/__init__.py&quot;, line 541, in signed_area
    flat = self.flatten()
           ^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/beziers/path/__init__.py&quot;, line 494, in flatten
    segs.extend(s.flatten(degree))
                ^^^^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/beziers/quadraticbezier.py&quot;, line 58, in flatten
    samples = self.sample(self.length/degree)
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File &quot;/usr/local/lib/python3.11/site-packages/beziers/utils/samplemixin.py&quot;, line 20, in sample
    step = 1.0 / float(samples)
           ~~~~^~~~~~~~~~~~~~~~

</code></pre>
 [code: failed-check]



</div>
</details>

<details>
    <summary>🔥 <b>FAIL</b> Shapes languages in all GF glyphsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.glyphset.html#"></a></summary>
    <div>


> 
> This check uses a heuristic to determine which GF glyphsets a font supports.
> Then it checks the font for correct shaping behaviour for all languages in
> those glyphsets.
> 




> Original proposal: https://github.com/googlefonts/fontbakery/issues/4147





* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">ru_Cyrl (Russian)</td>
<td align="left">Some mark glyphs were missing: ◌̆, ◌̈</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">uk_Cyrl (Ukrainian)</td>
<td align="left">Some base glyphs were missing: ʼ, є, і, ї, ґ</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Some mark glyphs were missing: ◌̆, ◌̈</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Shaper produced a .notdef</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">sr_Cyrl (Serbian)</td>
<td align="left">Some base glyphs were missing: ђ, ј, љ, њ, ћ, џ</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Shaper produced a .notdef</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">be_Cyrl (Belarusian)</td>
<td align="left">Some base glyphs were missing: і, ў</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Some mark glyphs were missing: ◌̆, ◌̈</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Shaper produced a .notdef</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">bg_Cyrl (Bulgarian)</td>
<td align="left">Some mark glyphs were missing: ◌̆</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* 🔥 **FAIL** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">bs_Cyrl (Bosnian (Cyrillic))</td>
<td align="left">Some base glyphs were missing: Ђ, Ј, Љ, Њ, Ћ, Џ, ђ, ј, љ, њ, ћ, џ</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Shaper produced a .notdef</td>
</tr>
</tbody>
</table>
 [code: failed-language-shaping]



* ⚠️ **WARN** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">WARN messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">uk_Cyrl (Ukrainian)</td>
<td align="left">Some auxiliary glyphs were missing: ʼ, є, і, ї, ґ</td>
</tr>
</tbody>
</table>
 [code: warning-language-shaping]



* ⚠️ **WARN** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">WARN messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">sr_Cyrl (Serbian)</td>
<td align="left">Some auxiliary glyphs were missing: ђ, ј, љ, њ, ћ, џ</td>
</tr>
</tbody>
</table>
 [code: warning-language-shaping]



* ⚠️ **WARN** <p>GF_Cyrillic_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">WARN messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">be_Cyrl (Belarusian)</td>
<td align="left">Some auxiliary glyphs were missing: і, ў</td>
</tr>
</tbody>
</table>
 [code: warning-language-shaping]



</div>
</details>

<details>
    <summary>🔥 <b>FAIL</b> Ensure files are not too large. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.html#"></a></summary>
    <div>


> 
> Serving extremely large font files on Google Fonts causes usability issues.
> This check ensures that file sizes are reasonable.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3320





* 🔥 **FAIL** <p>Font file is 9.5Mb, larger than limit 9.0Mb</p>
 [code: massive-font]



</div>
</details>

<details>
    <summary>🔥 <b>FAIL</b> Check Google Fonts glyph coverage. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.glyphset.html#"></a></summary>
    <div>


> 
> Google Fonts expects that fonts in its collection support at least the minimal
> set of characters defined in the `GF-latin-core` glyph-set.
> 




> Original proposal: https://github.com/fonttools/fontbakery/pull/2488





* 🔥 **FAIL** <p>Missing required codepoints:</p>
<pre><code>- 0x0104 (LATIN CAPITAL LETTER A WITH OGONEK)


- 0x0105 (LATIN SMALL LETTER A WITH OGONEK)


- 0x0106 (LATIN CAPITAL LETTER C WITH ACUTE)


- 0x0107 (LATIN SMALL LETTER C WITH ACUTE)


- 0x010A (LATIN CAPITAL LETTER C WITH DOT ABOVE)


- 0x010B (LATIN SMALL LETTER C WITH DOT ABOVE)


- 0x010C (LATIN CAPITAL LETTER C WITH CARON)


- 0x010D (LATIN SMALL LETTER C WITH CARON)


- 0x010E (LATIN CAPITAL LETTER D WITH CARON)


- 0x010F (LATIN SMALL LETTER D WITH CARON)


- 86 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: missing-codepoints]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check glyphs in mark glyph class are non-spacing. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Glyphs in the GDEF mark glyph class should be non-spacing.
> 
> Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
> positioning that was only intended for building composite glyphs during design.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following spacing glyphs may be in the GDEF mark glyph class by mistake:
uni02EA (U+02EA) and uni02EB (U+02EB)</p>
 [code: spacing-mark-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check mark characters are in GDEF mark glyph class. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Mark characters should be in the GDEF mark glyph class.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following mark characters could be in the GDEF mark glyph class:
uni0304 (U+0304), uni20DD (U+20DD), uni20DE (U+20DE), uni302A (U+302A), uni302B (U+302B), uni302C (U+302C), uni302D (U+302D), uni3099 (U+3099) and uni309A (U+309A)</p>
 [code: mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check GDEF mark glyph class doesn't have characters that are not marks. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
> if they have mark anchors.
> 
> Only combining mark glyphs should be in that class. Any non-mark glyph
> must not be in that class, in particular spacing glyphs.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following non-mark characters should not be in the GDEF mark glyph class:
U+02EA and U+02EB</p>
 [code: non-mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Does the font contain chws and vchw features? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> The W3C recommends the addition of chws and vchw features to CJK fonts
> to enhance the spacing of glyphs in environments which do not fully support
> JLREQ layout rules.
> 
> The chws_tool utility (https://github.com/googlefonts/chws_tool) can be used
> to add these features automatically.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3363





* ⚠️ **WARN** <p>chws feature not found in font. Use chws_tool (<a href="https://github.com/googlefonts/chws_tool">https://github.com/googlefonts/chws_tool</a>) to add it.</p>
 [code: missing-chws-feature]



* ⚠️ **WARN** <p>vchw feature not found in font. Use chws_tool (<a href="https://github.com/googlefonts/chws_tool">https://github.com/googlefonts/chws_tool</a>) to add it.</p>
 [code: missing-vchw-feature]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check if each glyph has the recommended amount of contours. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only
> be constructured in a handful of ways. This means a glyph's contour count
> will only differ slightly amongst different fonts, e.g a 'g' could either
> be 2 or 3 contours, depending on whether its double story or single story.
> 
> However, a quotedbl should have 2 contours, unless the font belongs
> to a display family.
> 
> This check currently does not cover variable fonts because there's plenty
> of alternative ways of constructing glyphs with multiple outlines for each
> feature in a VarFont. The expected contour count data for this check is
> currently optimized for the typical construction of glyphs in static fonts.
> 




> Original proposal: legacy:check/153





* ⚠️ **WARN** <p>This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.</p>
<p>The following glyphs do not have the recommended number of contours:</p>
<pre><code>- Glyph name: uni210A	Contours detected: 3	Expected: 2

- Glyph name: uni21B9	Contours detected: 2	Expected: 4

- Glyph name: uni2552	Contours detected: 1	Expected: 2

- Glyph name: uni2553	Contours detected: 1	Expected: 2

- Glyph name: uni2555	Contours detected: 1	Expected: 2

- Glyph name: uni2556	Contours detected: 1	Expected: 2

- Glyph name: uni2558	Contours detected: 1	Expected: 2

- Glyph name: uni2559	Contours detected: 1	Expected: 2

- Glyph name: uni255B	Contours detected: 1	Expected: 2

- Glyph name: uni255C	Contours detected: 1	Expected: 2

- 12 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: contour-count]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check math signs have the same width. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> It is a common practice to have math signs sharing the same width
> (preferably the same width as tabular figures accross the entire font family).
> 
> This probably comes from the will to avoid additional tabular math signs
> knowing that their design can easily share the same width.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3832





* ⚠️ **WARN** <p>The most common width is 1000 among a set of 44 math glyphs.
The following math glyphs have a different width, though:</p>
<p>Width = 555:
plus, less, logicalnot, minus, equal, greater</p>
 [code: width-outliers]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Glyph names are all valid? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> Microsoft's recommendations for OpenType Fonts states the following:
> 
> 'NOTE: The PostScript glyph name must be no longer than 31 characters,
> include only uppercase or lowercase English letters, European digits,
> the period or the underscore, i.e. from the set `[A-Za-z0-9_.]` and
> should start with a letter, except the special glyph name `.notdef`
> which starts with a period.'
> 
> https://learn.microsoft.com/en-us/typography/opentype/otspec181/recom#-post--table
> 
> 
> In practice, though, particularly in modern environments, glyph names
> can be as long as 63 characters.
> 
> According to the "Adobe Glyph List Specification" available at:
> 
> https://github.com/adobe-type-tools/agl-specification
> 




> Original proposal: legacy:check/058
> See also: https://github.com/fonttools/fontbakery/issues/2832





* ⚠️ **WARN** <p>The following glyph names may be too long for some legacy systems which may expect a maximum 31-characters length limit:
cjkcompatibilityideograph2f825hani, cjkcompatibilityideograph2f83bhani, cjkcompatibilityideograph2f840hani, cjkcompatibilityideograph2f878hani, cjkcompatibilityideograph2f894hani, cjkcompatibilityideograph2f8cdhani, cjkcompatibilityideograph2f994hani, cjkcompatibilityideograph2f9bchani, cjkcompatibilityideograph2f9d4hani, cjkcompatibilityideographf92chani and 100 more.</p>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: legacy-long-names]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Do outlines contain any jaggy segments? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>


> 
> This check heuristically detects outline segments which form a particularly
> small angle, indicative of an outline error. This may cause false positives
> in cases such as extreme ink traps, so should be regarded as advisory and
> backed up by manual inspection.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3064





* ⚠️ **WARN** <p>The following glyphs have jaggy segments:</p>
<pre><code>* cid12463 (U+555F): L&lt;&lt;181.0,-31.0&gt;--&lt;181.0,279.0&gt;&gt;/B&lt;&lt;181.0,279.0&gt;-&lt;171.0,200.0&gt;-&lt;148.5,121.0&gt;&gt; = 7.214262039206713

* cid38524 (U+8BFF): B&lt;&lt;394.5,99.0&gt;-&lt;396.0,102.0&gt;-&lt;398.0,104.0&gt;&gt;/L&lt;&lt;398.0,104.0&gt;--&lt;171.0,-54.0&gt;&gt; = 10.160722927637101

* cid38550 (U+8C19): L&lt;&lt;527.0,473.0&gt;--&lt;746.0,473.0&gt;&gt;/L&lt;&lt;746.0,473.0&gt;--&lt;716.0,479.0&gt;&gt; = 11.309932474020195

* cid38550 (U+8C19): L&lt;&lt;937.0,620.0&gt;--&lt;838.0,620.0&gt;&gt;/L&lt;&lt;838.0,620.0&gt;--&lt;855.0,617.0&gt;&gt; = 10.00797980144135

* cid38551 (U+8C1A): L&lt;&lt;940.0,675.0&gt;--&lt;833.0,675.0&gt;&gt;/L&lt;&lt;833.0,675.0&gt;--&lt;860.0,669.0&gt;&gt; = 12.52880770915152

* cid38561 (U+8C24): L&lt;&lt;473.0,628.0&gt;--&lt;520.0,636.0&gt;&gt;/L&lt;&lt;520.0,636.0&gt;--&lt;371.0,636.0&gt;&gt; = 9.65989307844234

* cid38561 (U+8C24): L&lt;&lt;564.0,518.0&gt;--&lt;730.0,518.0&gt;&gt;/L&lt;&lt;730.0,518.0&gt;--&lt;721.0,520.0&gt;&gt; = 12.52880770915152

* cid38561 (U+8C24): L&lt;&lt;582.0,522.0&gt;--&lt;564.0,518.0&gt;&gt;/L&lt;&lt;564.0,518.0&gt;--&lt;730.0,518.0&gt;&gt; = 12.52880770915152

* cid38561 (U+8C24): L&lt;&lt;928.0,636.0&gt;--&lt;836.0,636.0&gt;&gt;/L&lt;&lt;836.0,636.0&gt;--&lt;845.0,634.0&gt;&gt; = 12.52880770915152

* cid38567 (U+8C2A): L&lt;&lt;462.0,596.0&gt;--&lt;483.0,599.0&gt;&gt;/L&lt;&lt;483.0,599.0&gt;--&lt;353.0,599.0&gt;&gt; = 8.13010235415596

* 2336 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: found-jaggy-segments]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Do outlines contain any semi-vertical or semi-horizontal lines? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>


> 
> This check detects line segments which are nearly, but not quite, exactly
> horizontal or vertical. Sometimes such lines are created by design, but often
> they are indicative of a design error.
> 
> This check is disabled for italic styles, which often contain nearly-upright
> lines.
> 




> Original proposal: https://github.com/fonttools/fontbakery/pull/3088





* ⚠️ **WARN** <p>The following glyphs have semi-vertical/semi-horizontal lines:</p>
<pre><code>* cid38436 (U+8BA7): L&lt;&lt;203.0,58.0&gt;--&lt;204.0,441.0&gt;&gt;

* cid38436 (U+8BA7): L&lt;&lt;275.0,513.0&gt;--&lt;274.0,111.0&gt;&gt;

* cid38559 (U+8C22): L&lt;&lt;346.0,279.0&gt;--&lt;345.0,739.0&gt;&gt;

* cid38561 (U+8C24): L&lt;&lt;357.0,517.0&gt;--&lt;509.0,518.0&gt;&gt;

* cid38561 (U+8C24): L&lt;&lt;793.0,518.0&gt;--&lt;947.0,519.0&gt;&gt;

* cid59546 (U+203CB): L&lt;&lt;638.0,469.0&gt;--&lt;883.0,468.0&gt;&gt;

* cid59597 (U+20873): L&lt;&lt;693.0,611.0&gt;--&lt;694.0,840.0&gt;&gt;

* cid59641 (U+20C43): L&lt;&lt;729.0,305.0&gt;--&lt;598.0,304.0&gt;&gt;

* cid59851 (U+216BA): L&lt;&lt;564.0,632.0&gt;--&lt;565.0,839.0&gt;&gt;

* cid59893 (U+217DA): L&lt;&lt;868.0,634.0&gt;--&lt;726.0,635.0&gt;&gt;

* 465 more.
</code></pre>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
 [code: found-semi-vertical]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure soft_dotted characters lose their dot when combined with marks that replace the dot. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/shaping.html#"></a></summary>
    <div>


> 
> An accent placed on characters with a "soft dot", like i or j, causes
> the dot to disappear.
> An explicit dot above can be added where required.
> See "Diacritics on i and j" in Section 7.1, "Latin" in The Unicode Standard.
> 
> Characters with the Soft_Dotted property are listed in
> https://www.unicode.org/Public/UCD/latest/ucd/PropList.txt
> 
> See also:
> https://googlefonts.github.io/gf-guide/diacritics.html#soft-dotted-glyphs
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/4059





* ⚠️ **WARN** <p>The dot of soft dotted characters used in orthographies <em>must</em> disappear in the following strings: j̀ j́ j̄ ị̀ ị́ ị̄</p>
<p>The dot of soft dotted characters <em>should</em> disappear in other cases, for example: i̇ i⃝̀ i⃝́ i⃝̄ i⃝̇ i⃝̌ i⃞̀ i⃞́ i⃞̄ i⃞̇ i⃞̌ j̇ ǰ j⃝̀ j⃝́ j⃝̄ j⃝̇ j⃝̌ j⃞̀ j⃞́</p>
<p>Your font does <em>not</em> cover the following languages that require the soft-dotted feature: Ejagham (Latn, 120,000 speakers), Gulay (Latn, 250,478 speakers), Belarusian (Cyrl, 10,064,517 speakers), Ukrainian (Cyrl, 29,273,587 speakers), Nzakara (Latn, 50,000 speakers), Dan (Latn, 1,099,244 speakers), Southern Kisi (Latn, 360,000 speakers), Dutch (Latn, 31,709,104 speakers), Makaa (Latn, 221,000 speakers), Ma’di (Latn, 584,000 speakers), Lithuanian (Latn, 2,357,094 speakers), Koonzime (Latn, 40,000 speakers), Ijo, Southeast (Latn, 2,471,000 speakers), Bafut (Latn, 158,146 speakers), Zapotec (Latn, 490,000 speakers), Mango (Latn, 77,000 speakers), Sar (Latn, 500,000 speakers), Dii (Latn, 71,000 speakers), Cicipu (Latn, 44,000 speakers), Navajo (Latn, 166,319 speakers), Kpelle, Guinea (Latn, 622,000 speakers), Avokaya (Latn, 100,000 speakers), Ngbaka (Latn, 1,020,000 speakers), Vute (Latn, 21,000 speakers), Fur (Latn, 1,230,163 speakers), Yala (Latn, 200,000 speakers), Basaa (Latn, 332,940 speakers), Lugbara (Latn, 2,200,000 speakers), Mfumte (Latn, 79,000 speakers), Kom (Latn, 360,685 speakers), Aghem (Latn, 38,843 speakers), Bete-Bendi (Latn, 100,000 speakers), Nateni (Latn, 100,000 speakers), Igbo (Latn, 27,823,640 speakers), Ekpeye (Latn, 226,000 speakers), Ebira (Latn, 2,200,000 speakers), South Central Banda (Latn, 244,000 speakers), Mundani (Latn, 34,000 speakers).</p>
 [code: soft-dotted]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>


> 
> This check ensures that all encoded glyphs in the font are covered by a
> subset declared in the METADATA.pb. Google Fonts splits the font into
> a set of subset fonts based on the contents of the `subsets` field and
> the subset definitions in the `glyphsets` repository.
> 
> Any encoded glyphs which are not by any of these subset definitions
> will not be served in the subsetted fonts, and so will be unreachable to
> the end user.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/4097
> See also: https://github.com/fonttools/fontbakery/pull/4273





* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: tifinagh, canadian-aboriginal, yi</li>
<li>U+02C9 MODIFIER LETTER MACRON: not included in any glyphset definition</li>
<li>U+02CA MODIFIER LETTER ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+02CB MODIFIER LETTER GRAVE ACCENT: not included in any glyphset definition</li>
<li>U+02D9 DOT ABOVE: try adding one of: canadian-aboriginal, yi</li>
<li>U+02EA MODIFIER LETTER YIN DEPARTING TONE MARK: not included in any glyphset definition</li>
<li>U+02EB MODIFIER LETTER YANG DEPARTING TONE MARK: not included in any glyphset definition</li>
<li>U+0307 COMBINING DOT ABOVE: try adding one of: tifinagh, coptic, old-permic, canadian-aboriginal, math, tai-le, syriac, malayalam</li>
<li>U+030C COMBINING CARON: try adding one of: cherokee, tai-le</li>
<li>U+2003 EM SPACE: try adding nushu
20706 more.</li>
</ul>
<p>Use -F or --full-lists to disable shortening of long lists.</p>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>chinese-hongkong</code>, <code>chinese-simplified</code>, <code>chinese-traditional</code>, <code>cyrillic</code>, <code>cyrillic-ext</code>, <code>greek-ext</code>, <code>japanese</code>, <code>latin</code>, <code>latin-ext</code>, <code>vietnamese</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Combined length of family and style must not exceed 32 characters. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.name.html#"></a></summary>
    <div>


> 
> This check ensures that the length of name table entries is not
> too long, as this causes problems in some environments.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/1488
> See also: https://github.com/fonttools/fontbakery/issues/2179





* ⚠️ **WARN** <p>Name ID 6 'ChocolateClassicalSans-Regular' exceeds 27 characters. This has been found to cause problems with PostScript printers, especially on Mac platforms.</p>
 [code: nameid6-too-long]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Is there kerning info for non-ligated sequences? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gpos.html#"></a></summary>
    <div>


> 
> Fonts with ligatures should have kerning on the corresponding non-ligated
> sequences for text where ligatures aren't used
> (eg https://github.com/impallari/Raleway/issues/14).
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/1145





* ⚠️ **WARN** <p>GPOS table lacks kerning info for the following non-ligated sequences:</p>
<pre><code>- f + f

- f + i

- f + l
</code></pre>
 [code: lacks-kern-info]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Are there caret positions declared for every ligature? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gdef.html#"></a></summary>
    <div>


> 
> All ligatures in a font must have corresponding caret (text cursor) positions
> defined in the GDEF table, otherwhise, users may experience issues with
> caret rendering.
> 
> If using GlyphsApp or UFOs, ligature carets can be defined as anchors with
> names starting with `caret_`. These can be compiled with fontmake as of
> version v2.4.0.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/1225





* ⚠️ **WARN** <p>This font lacks caret position values for ligature glyphs on its GDEF table.</p>
 [code: lacks-caret-pos]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.meta.html#"></a></summary>
    <div>


> 
> The OpenType 'meta' table originated at Apple. Microsoft added it to OT with
> just two DataMap records:
> 
> - dlng: comma-separated ScriptLangTags that indicate which scripts,
> or languages and scripts, with possible variants, the font is designed for.
> 
> - slng: comma-separated ScriptLangTags that indicate which scripts,
> or languages and scripts, with possible variants, the font supports.
> 
> 
> The slng structure is intended to describe which languages and scripts the
> font overall supports. For example, a Traditional Chinese font that also
> contains Latin characters, can indicate Hant,Latn, showing that it supports
> Hant, the Traditional Chinese variant of the Hani script, and it also
> supports the Latn script.
> 
> The dlng structure is far more interesting. A font may contain various glyphs,
> but only a particular subset of the glyphs may be truly "leading" in the design,
> while other glyphs may have been included for technical reasons. Such a
> Traditional Chinese font could only list Hant there, showing that it’s designed
> for Traditional Chinese, but the font would omit Latn, because the developers
> don’t think the font is really recommended for purely Latin-script use.
> 
> The tags used in the structures can comprise just script, or also language
> and script. For example, if a font has Bulgarian Cyrillic alternates in the
> locl feature for the cyrl BGR OT languagesystem, it could also indicate in
> dlng explicitly that it supports bul-Cyrl. (Note that the scripts and languages
> in meta use the ISO language and script codes, not the OpenType ones).
> 
> This check ensures that the font has the meta table containing the
> slng and dlng structures.
> 
> All families in the Google Fonts collection should contain the 'meta' table.
> Windows 10 already uses it when deciding on which fonts to fall back to.
> The Google Fonts API and also other environments could use the data for
> smarter filtering. Most importantly, those entries should be added
> to the Noto fonts.
> 
> In the font making process, some environments store this data in external
> files already. But the meta table provides a convenient way to store this
> inside the font file, so some tools may add the data, and unrelated tools
> may read this data. This makes the solution much more portable and universal.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3349





* ⚠️ **WARN** <p>This font file does not have a 'meta' table.</p>
 [code: lacks-meta-table]



</div>
</details>
</div>
</details>




### Summary

| 💥 ERROR | ☠ FATAL | 🔥 FAIL | ⚠️ WARN | ⏩ SKIP | ℹ️ INFO | ✅ PASS | 🔎 DEBUG | 
| ---|---|---|---|---|---|---|---|
| 1 | 0 | 3 | 16 | 120 | 7 | 103 | 0 | 
| 0% | 0% | 1% | 6% | 48% | 3% | 41% | 0% | 



**Note:** The following loglevels were omitted in this report:


* SKIP
* INFO
* PASS
* DEBUG
